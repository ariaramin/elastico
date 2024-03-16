import 'dart:convert';

import 'package:elastico/app/core/error/api_exception.dart';
import 'package:elastico/app/core/constants/constants.dart';
import 'package:elastico/app/features/auth/data/models/user_model.dart';
import 'package:elastico/app/features/auth/domain/entities/user.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:pocketbase/pocketbase.dart';

@lazySingleton
class AuthService {
  final PocketBase _pocketBase;
  final FlutterSecureStorage _storage;

  AuthService(this._pocketBase, this._storage);

  Future<RecordAuth> login(
    String usernameOrEmail,
    String password,
  ) async {
    try {
      return await _pocketBase
          .collection('users')
          .authWithPassword(usernameOrEmail, password);
    } on ClientException catch (error) {
      error.statusCode != 0
          ? throw ApiException(
              code: error.statusCode,
              message: error.response['message'],
            )
          : throw const ApiException();
    } catch (_) {
      throw const ApiException();
    }
  }

  Future<RecordModel> register(
    String fullName,
    String email,
    String password,
  ) async {
    try {
      final recordModel = await _pocketBase.collection('users').create(
        body: {
          'name': fullName,
          'email': email,
          'password': password,
          'passwordConfirm': password,
        },
      );
      await login(email, password);
      return recordModel;
    } on ClientException catch (error) {
      final invalidFields = error.response['data'] as Map<String, dynamic>;
      if (invalidFields.isNotEmpty) {
        final errorEntry = invalidFields.entries.first;
        throw ApiException.authException(errorEntry.value['code']);
      }
      throw ApiException(
        code: error.statusCode,
        message: error.response['message'],
      );
    } catch (_) {
      throw const ApiException();
    }
  }

  Stream<User> get user => _pocketBase.authStore.onChange.map((event) {
        if (event.token.isNotEmpty) {
          final userModel = UserModel.fromRecord(event.model);
          final userJson = userModel.toJson();
          _storage.write(key: Constants.userKey, value: jsonEncode(userJson));
          _storage.write(key: Constants.tokenKey, value: event.token);
          return userModel.toEntity();
        } else {
          _storage.delete(key: Constants.userKey);
          _storage.delete(key: Constants.tokenKey);
          return User.empty;
        }
      });

  Future<User> get currentUser async {
    final userJson = await _storage.read(key: Constants.userKey);
    if (userJson != null) {
      final userModel = UserModel.fromJson(jsonDecode(userJson));
      return userModel.toEntity();
    }
    return User.empty;
  }

  Future<String?> get userToken async => _storage.read(key: Constants.tokenKey);

  void logout() => _pocketBase.authStore.clear();
}

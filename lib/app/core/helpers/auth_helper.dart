import 'dart:convert';

import 'package:elastico/app/features/auth/data/models/user_model.dart';
import 'package:elastico/app/features/auth/domain/entities/user.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:pocketbase/pocketbase.dart';

@lazySingleton
class AuthHelper {
  final PocketBase _pocketBase;
  final FlutterSecureStorage _storage;

  AuthHelper(this._pocketBase, this._storage);

  Stream<User> get user => _pocketBase.authStore.onChange.map((event) {
        if (event.token.isNotEmpty) {
          final userModel = UserModel.fromRecord(event.model);
          final userJson = userModel.toJson();
          _storage.write(key: 'user', value: jsonEncode(userJson));
          return userModel.toEntity();
        } else {
          _storage.delete(key: 'user');
          return User.empty;
        }
      });

  Future<User> get currentUser async {
    final userJson = await _storage.read(key: 'user');
    if (userJson != null) {
      final userModel = UserModel.fromJson(jsonDecode(userJson));
      return userModel.toEntity();
    }
    return User.empty;
  }

  void logout() => _pocketBase.authStore.clear();
}

import 'package:elastico/app/core/error/api_exception.dart';
import 'package:injectable/injectable.dart';
import 'package:pocketbase/pocketbase.dart';

@injectable
class PocketBaseHelper {
  final PocketBase _pocketBase;

  PocketBaseHelper(this._pocketBase);

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
      return await _pocketBase.collection('users').create(
        body: {
          'name': fullName,
          'email': email,
          'password': password,
          'passwordConfirm': password,
        },
      );
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

  Future<ResultList<RecordModel>> getList(
    String collectionName, {
    int page = 1,
    int perPage = 30,
    String? expand,
    String? filter,
  }) async {
    try {
      return await _pocketBase.collection(collectionName).getList(
            page: page,
            perPage: perPage,
            expand: expand,
            filter: filter,
          );
    } on ClientException catch (error) {
      throw ApiException(
        code: error.statusCode,
        message: error.response['message'],
      );
    } catch (_) {
      throw const ApiException();
    }
  }

  Future<RecordModel> getOne(
    String collectionName, {
    required String id,
    String? expand,
  }) async {
    try {
      return await _pocketBase.collection(collectionName).getOne(
            id,
            expand: expand,
          );
    } on ClientException catch (error) {
      throw ApiException(
        code: error.statusCode,
        message: error.response['message'],
      );
    } catch (_) {
      throw const ApiException();
    }
  }
}

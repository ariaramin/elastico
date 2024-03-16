import 'package:elastico/app/core/error/api_exception.dart';
import 'package:elastico/app/core/services/remote/auth_service.dart';
import 'package:injectable/injectable.dart';
import 'package:pocketbase/pocketbase.dart';

@lazySingleton
class PocketBaseService {
  final PocketBase _pocketBase;
  final AuthService _authService;

  PocketBaseService(
    this._pocketBase,
    this._authService,
  );

  Future<ResultList<RecordModel>> getList(
    String collectionName, {
    int page = 1,
    int perPage = 30,
    String? expand,
    String? filter,
    String? sort,
  }) async {
    try {
      return await _pocketBase.collection(collectionName).getList(
            page: page,
            perPage: perPage,
            expand: expand,
            filter: filter,
            sort: sort,
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

  Future<RecordModel> create(
    String collectionName, {
    required Map<String, dynamic> data,
  }) async {
    try {
      final token = await _authService.userToken;
      if (token == null) throw const ApiException();
      return await _pocketBase.collection(collectionName).create(
        body: data,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
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

  Future<RecordModel> update(
    String collectionName, {
    required String id,
    required Map<String, dynamic> data,
  }) async {
    try {
      final token = await _authService.userToken;
      if (token == null) throw const ApiException();
      return await _pocketBase.collection(collectionName).update(
        id,
        body: data,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
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

  Future<void> delete(
    String collectionName, {
    required String id,
  }) async {
    try {
      final token = await _authService.userToken;
      if (token == null) throw const ApiException();
      return await _pocketBase.collection(collectionName).delete(
        id,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
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

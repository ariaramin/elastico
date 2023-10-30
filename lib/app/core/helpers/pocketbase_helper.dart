import 'package:elastico/app/core/error/api_exception.dart';
import 'package:injectable/injectable.dart';
import 'package:pocketbase/pocketbase.dart';

@lazySingleton
class PocketBaseHelper {
  final PocketBase _pocketBase;

  PocketBaseHelper(this._pocketBase);

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

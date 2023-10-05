import 'package:dio/dio.dart';
import 'package:elastico/app/core/error/api_exception.dart';
import 'package:injectable/injectable.dart';

@injectable
class ApiHelper {
  final Dio _dio;

  ApiHelper(this._dio);

  Future<dynamic> get(String url,
      {Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await _dio.get(url, queryParameters: queryParameters);
      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw ApiException(
          code: response.statusCode,
          message: response.statusMessage,
        );
      }
    } on DioException catch (error) {
      throw ApiException(
        code: error.response?.statusCode,
        message: error.response?.statusMessage,
      );
    } catch (error) {
      rethrow;
    }
  }
}

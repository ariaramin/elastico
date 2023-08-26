import 'package:dio/dio.dart';
import 'package:elastico/app/core/helpers/api_helper.dart';
import 'package:elastico/app/core/utils/constants.dart';
import 'package:elastico/app/features/home/data/models/home_data_model.dart';

abstract class HomeDatasource {
  Future<HomeDataModel> getHomeData();
}

class HomeDatasourceImpl extends HomeDatasource {
  final ApiHelper _apiHelper;

  HomeDatasourceImpl({required Dio dio}) : _apiHelper = ApiHelper(dio);

  @override
  Future<HomeDataModel> getHomeData() async {
    final response = await _apiHelper.get(
      Constants.homeDataUrl,
      queryParameters: {
        'expand':
            'slider_banners,top_categories,discounted_products,middle_banners,best_seller_products,newest_products',
      },
    );

    HomeDataModel homeDataModel =
        HomeDataModel.fromJson(response['items'][0]['expand']);

    return homeDataModel;
  }
}

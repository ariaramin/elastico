import 'package:dio/dio.dart';
import 'package:elastico/app/core/helpers/api_helper.dart';
import 'package:elastico/app/core/utils/constants.dart';
import 'package:elastico/app/features/home/data/models/home_data_model.dart';
import 'package:injectable/injectable.dart';

sealed class HomeDatasource {
  Future<HomeDataModel> getHomeData();
}

@Injectable(as: HomeDatasource)
class HomeDatasourceImpl extends HomeDatasource {
  final ApiHelper _apiHelper;

  HomeDatasourceImpl({required Dio dio}) : _apiHelper = ApiHelper(dio);

  @override
  Future<HomeDataModel> getHomeData() async {
    final response = await _apiHelper.get(
      Constants.homeDataUrl,
      queryParameters: {
        'expand':
            'sliderBanners,topCategories,discountedProducts,middleBanners,bestSellerProducts,newestProducts',
      },
    );

    HomeDataModel homeDataModel =
        HomeDataModel.fromJson(response['items'][0]['expand']);

    return homeDataModel;
  }
}

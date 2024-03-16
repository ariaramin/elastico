import 'package:elastico/app/core/services/remote/pocketbase_service.dart';
import 'package:elastico/app/core/constants/constants.dart';
import 'package:elastico/app/features/home/data/models/home_data_model.dart';
import 'package:injectable/injectable.dart';

sealed class HomeDatasource {
  Future<HomeDataModel> getHomeData();
}

@Injectable(as: HomeDatasource)
class HomeDatasourceImpl implements HomeDatasource {
  final PocketBaseService _pocketBaseHelper;

  HomeDatasourceImpl(this._pocketBaseHelper);

  @override
  Future<HomeDataModel> getHomeData() async {
    final response = await _pocketBaseHelper.getList(
      Constants.homeData,
      expand:
          'sliderBanners,topCategories,discountedProducts,middleBanners,bestSellerProducts,newestProducts',
    );

    HomeDataModel homeDataModel =
        HomeDataModel.fromJson(response.items[0].expand);

    return homeDataModel;
  }
}

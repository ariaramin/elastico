import 'package:elastico/app/core/helpers/pocketbase_helper.dart';
import 'package:elastico/app/core/utils/constants.dart';
import 'package:elastico/app/features/home/data/models/home_data_model.dart';
import 'package:injectable/injectable.dart';

sealed class HomeDatasource {
  Future<HomeDataModel> getHomeData();
}

@Injectable(as: HomeDatasource)
class HomeDatasourceImpl extends HomeDatasource {
  final PocketBaseHelper _pocketBaseHelper;

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

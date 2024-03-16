import 'package:elastico/app/features/category/data/models/category_model.dart';
import 'package:elastico/app/features/home/data/models/banner_model.dart';
import 'package:elastico/app/features/home/domain/entities/home_data.dart';
import 'package:elastico/app/features/product/data/models/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_data_model.freezed.dart';
part 'home_data_model.g.dart';

@freezed
class HomeDataModel with _$HomeDataModel {
  const HomeDataModel._();

  const factory HomeDataModel({
    @JsonKey(fromJson: _convertListOfBanners)
    required List<BannerModel> sliderBanners,
    @JsonKey(fromJson: _convertListOfCategories)
    required List<CategoryModel> topCategories,
    @JsonKey(fromJson: _convertListOfProducts)
    required List<ProductModel> discountedProducts,
    @JsonKey(fromJson: _convertListOfBanners)
    required List<BannerModel> middleBanners,
    @JsonKey(fromJson: _convertListOfProducts)
    required List<ProductModel> bestSellerProducts,
    @JsonKey(fromJson: _convertListOfProducts)
    required List<ProductModel> newestProducts,
  }) = _HomeDataModel;

  factory HomeDataModel.fromJson(Map<String, dynamic> json) =>
      _$HomeDataModelFromJson(json);

  HomeData toEntity() => HomeData(
        sliderBanners: sliderBanners.map((e) => e.toEntity()).toList(),
        topCategories: topCategories.map((e) => e.toEntity()).toList(),
        discountedProducts:
            discountedProducts.map((e) => e.toEntity()).toList(),
        middleBanners: middleBanners.map((e) => e.toEntity()).toList(),
        bestSellerProducts:
            bestSellerProducts.map((e) => e.toEntity()).toList(),
        newestProducts: newestProducts.map((e) => e.toEntity()).toList(),
      );
}

List<BannerModel> _convertListOfBanners(List<dynamic> list) =>
    list.map((record) => BannerModel.fromRecord(record)).toList();

List<CategoryModel> _convertListOfCategories(List<dynamic> list) =>
    list.map((record) => CategoryModel.fromRecord(record)).toList();

List<ProductModel> _convertListOfProducts(List<dynamic> list) =>
    list.map((record) => ProductModel.fromRecord(record)).toList();

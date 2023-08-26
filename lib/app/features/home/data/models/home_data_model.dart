import 'package:elastico/app/features/category/data/models/category_model.dart';
import 'package:elastico/app/features/home/data/models/banner_model.dart';
import 'package:elastico/app/features/home/domain/entities/home_data.dart';
import 'package:elastico/app/features/product/data/models/product_model.dart';

class HomeDataModel extends HomeData {
  const HomeDataModel({
    required List<BannerModel> sliderBanners,
    required List<CategoryModel> topCategories,
    required List<ProductModel> discountedProducts,
    required List<BannerModel> middleBanners,
    required List<ProductModel> bestSellerProducts,
    required List<ProductModel> newestProducts,
  }) : super(
          sliderBanners: sliderBanners,
          topCategories: topCategories,
          discountedProducts: discountedProducts,
          middleBanners: middleBanners,
          bestSellerProducts: bestSellerProducts,
          newestProducts: newestProducts,
        );

  factory HomeDataModel.fromJson(Map<String, dynamic> json) {
    return HomeDataModel(
      sliderBanners: (json['slider_banners'] as List<dynamic>)
          .map((bannerJson) => BannerModel.fromJson(bannerJson))
          .toList(),
      topCategories: (json['top_categories'] as List<dynamic>)
          .map((categoryJson) => CategoryModel.fromJson(categoryJson))
          .toList(),
      discountedProducts: (json['discounted_products'] as List<dynamic>)
          .map((productJson) => ProductModel.fromJson(productJson))
          .toList(),
      middleBanners: (json['middle_banners'] as List<dynamic>)
          .map((bannerJson) => BannerModel.fromJson(bannerJson))
          .toList(),
      bestSellerProducts: (json['best_seller_products'] as List<dynamic>)
          .map((productJson) => ProductModel.fromJson(productJson))
          .toList(),
      newestProducts: (json['newest_products'] as List<dynamic>)
          .map((productJson) => ProductModel.fromJson(productJson))
          .toList(),
    );
  }
}

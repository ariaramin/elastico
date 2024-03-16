import 'package:elastico/app/features/category/domain/entities/category.dart';
import 'package:elastico/app/features/home/domain/entities/banner.dart';
import 'package:elastico/app/features/product/domain/entities/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_data.freezed.dart';

@freezed
class HomeData with _$HomeData {
  const factory HomeData({
    required List<Banner> sliderBanners,
    required List<Category> topCategories,
    required List<Product> discountedProducts,
    required List<Banner> middleBanners,
    required List<Product> bestSellerProducts,
    required List<Product> newestProducts,
  }) = _HomeData;
}

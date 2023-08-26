import 'package:equatable/equatable.dart';
import 'package:elastico/app/features/category/domain/entities/category.dart';
import 'package:elastico/app/features/home/domain/entities/banner.dart';
import 'package:elastico/app/features/product/domain/entities/product.dart';

class HomeData extends Equatable {
  final List<Banner> sliderBanners;
  final List<Category> topCategories;
  final List<Product> discountedProducts;
  final List<Banner> middleBanners;
  final List<Product> bestSellerProducts;
  final List<Product> newestProducts;

  const HomeData({
    required this.sliderBanners,
    required this.topCategories,
    required this.discountedProducts,
    required this.middleBanners,
    required this.bestSellerProducts,
    required this.newestProducts,
  });

  @override
  List<Object?> get props => [
        sliderBanners,
        topCategories,
        discountedProducts,
        middleBanners,
        bestSellerProducts,
        newestProducts,
      ];
}

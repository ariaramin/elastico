// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeDataModel _$$_HomeDataModelFromJson(Map<String, dynamic> json) =>
    _$_HomeDataModel(
      sliderBanners: _convertListOfBanners(json['sliderBanners'] as List),
      topCategories: _convertListOfCategories(json['topCategories'] as List),
      discountedProducts:
          _convertListOfProducts(json['discountedProducts'] as List),
      middleBanners: _convertListOfBanners(json['middleBanners'] as List),
      bestSellerProducts:
          _convertListOfProducts(json['bestSellerProducts'] as List),
      newestProducts: _convertListOfProducts(json['newestProducts'] as List),
    );

Map<String, dynamic> _$$_HomeDataModelToJson(_$_HomeDataModel instance) =>
    <String, dynamic>{
      'sliderBanners': instance.sliderBanners,
      'topCategories': instance.topCategories,
      'discountedProducts': instance.discountedProducts,
      'middleBanners': instance.middleBanners,
      'bestSellerProducts': instance.bestSellerProducts,
      'newestProducts': instance.newestProducts,
    };

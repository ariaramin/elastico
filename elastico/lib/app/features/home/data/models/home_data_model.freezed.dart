// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeDataModel _$HomeDataModelFromJson(Map<String, dynamic> json) {
  return _HomeDataModel.fromJson(json);
}

/// @nodoc
mixin _$HomeDataModel {
  @JsonKey(fromJson: _convertListOfBanners)
  List<BannerModel> get sliderBanners => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _convertListOfCategories)
  List<CategoryModel> get topCategories => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _convertListOfProducts)
  List<ProductModel> get discountedProducts =>
      throw _privateConstructorUsedError;
  @JsonKey(fromJson: _convertListOfBanners)
  List<BannerModel> get middleBanners => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _convertListOfProducts)
  List<ProductModel> get bestSellerProducts =>
      throw _privateConstructorUsedError;
  @JsonKey(fromJson: _convertListOfProducts)
  List<ProductModel> get newestProducts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeDataModelCopyWith<HomeDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeDataModelCopyWith<$Res> {
  factory $HomeDataModelCopyWith(
          HomeDataModel value, $Res Function(HomeDataModel) then) =
      _$HomeDataModelCopyWithImpl<$Res, HomeDataModel>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _convertListOfBanners)
      List<BannerModel> sliderBanners,
      @JsonKey(fromJson: _convertListOfCategories)
      List<CategoryModel> topCategories,
      @JsonKey(fromJson: _convertListOfProducts)
      List<ProductModel> discountedProducts,
      @JsonKey(fromJson: _convertListOfBanners) List<BannerModel> middleBanners,
      @JsonKey(fromJson: _convertListOfProducts)
      List<ProductModel> bestSellerProducts,
      @JsonKey(fromJson: _convertListOfProducts)
      List<ProductModel> newestProducts});
}

/// @nodoc
class _$HomeDataModelCopyWithImpl<$Res, $Val extends HomeDataModel>
    implements $HomeDataModelCopyWith<$Res> {
  _$HomeDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sliderBanners = null,
    Object? topCategories = null,
    Object? discountedProducts = null,
    Object? middleBanners = null,
    Object? bestSellerProducts = null,
    Object? newestProducts = null,
  }) {
    return _then(_value.copyWith(
      sliderBanners: null == sliderBanners
          ? _value.sliderBanners
          : sliderBanners // ignore: cast_nullable_to_non_nullable
              as List<BannerModel>,
      topCategories: null == topCategories
          ? _value.topCategories
          : topCategories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      discountedProducts: null == discountedProducts
          ? _value.discountedProducts
          : discountedProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      middleBanners: null == middleBanners
          ? _value.middleBanners
          : middleBanners // ignore: cast_nullable_to_non_nullable
              as List<BannerModel>,
      bestSellerProducts: null == bestSellerProducts
          ? _value.bestSellerProducts
          : bestSellerProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      newestProducts: null == newestProducts
          ? _value.newestProducts
          : newestProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeDataModelImplCopyWith<$Res>
    implements $HomeDataModelCopyWith<$Res> {
  factory _$$HomeDataModelImplCopyWith(
          _$HomeDataModelImpl value, $Res Function(_$HomeDataModelImpl) then) =
      __$$HomeDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: _convertListOfBanners)
      List<BannerModel> sliderBanners,
      @JsonKey(fromJson: _convertListOfCategories)
      List<CategoryModel> topCategories,
      @JsonKey(fromJson: _convertListOfProducts)
      List<ProductModel> discountedProducts,
      @JsonKey(fromJson: _convertListOfBanners) List<BannerModel> middleBanners,
      @JsonKey(fromJson: _convertListOfProducts)
      List<ProductModel> bestSellerProducts,
      @JsonKey(fromJson: _convertListOfProducts)
      List<ProductModel> newestProducts});
}

/// @nodoc
class __$$HomeDataModelImplCopyWithImpl<$Res>
    extends _$HomeDataModelCopyWithImpl<$Res, _$HomeDataModelImpl>
    implements _$$HomeDataModelImplCopyWith<$Res> {
  __$$HomeDataModelImplCopyWithImpl(
      _$HomeDataModelImpl _value, $Res Function(_$HomeDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sliderBanners = null,
    Object? topCategories = null,
    Object? discountedProducts = null,
    Object? middleBanners = null,
    Object? bestSellerProducts = null,
    Object? newestProducts = null,
  }) {
    return _then(_$HomeDataModelImpl(
      sliderBanners: null == sliderBanners
          ? _value._sliderBanners
          : sliderBanners // ignore: cast_nullable_to_non_nullable
              as List<BannerModel>,
      topCategories: null == topCategories
          ? _value._topCategories
          : topCategories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      discountedProducts: null == discountedProducts
          ? _value._discountedProducts
          : discountedProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      middleBanners: null == middleBanners
          ? _value._middleBanners
          : middleBanners // ignore: cast_nullable_to_non_nullable
              as List<BannerModel>,
      bestSellerProducts: null == bestSellerProducts
          ? _value._bestSellerProducts
          : bestSellerProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      newestProducts: null == newestProducts
          ? _value._newestProducts
          : newestProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeDataModelImpl extends _HomeDataModel {
  const _$HomeDataModelImpl(
      {@JsonKey(fromJson: _convertListOfBanners)
      required final List<BannerModel> sliderBanners,
      @JsonKey(fromJson: _convertListOfCategories)
      required final List<CategoryModel> topCategories,
      @JsonKey(fromJson: _convertListOfProducts)
      required final List<ProductModel> discountedProducts,
      @JsonKey(fromJson: _convertListOfBanners)
      required final List<BannerModel> middleBanners,
      @JsonKey(fromJson: _convertListOfProducts)
      required final List<ProductModel> bestSellerProducts,
      @JsonKey(fromJson: _convertListOfProducts)
      required final List<ProductModel> newestProducts})
      : _sliderBanners = sliderBanners,
        _topCategories = topCategories,
        _discountedProducts = discountedProducts,
        _middleBanners = middleBanners,
        _bestSellerProducts = bestSellerProducts,
        _newestProducts = newestProducts,
        super._();

  factory _$HomeDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeDataModelImplFromJson(json);

  final List<BannerModel> _sliderBanners;
  @override
  @JsonKey(fromJson: _convertListOfBanners)
  List<BannerModel> get sliderBanners {
    if (_sliderBanners is EqualUnmodifiableListView) return _sliderBanners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sliderBanners);
  }

  final List<CategoryModel> _topCategories;
  @override
  @JsonKey(fromJson: _convertListOfCategories)
  List<CategoryModel> get topCategories {
    if (_topCategories is EqualUnmodifiableListView) return _topCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topCategories);
  }

  final List<ProductModel> _discountedProducts;
  @override
  @JsonKey(fromJson: _convertListOfProducts)
  List<ProductModel> get discountedProducts {
    if (_discountedProducts is EqualUnmodifiableListView)
      return _discountedProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_discountedProducts);
  }

  final List<BannerModel> _middleBanners;
  @override
  @JsonKey(fromJson: _convertListOfBanners)
  List<BannerModel> get middleBanners {
    if (_middleBanners is EqualUnmodifiableListView) return _middleBanners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_middleBanners);
  }

  final List<ProductModel> _bestSellerProducts;
  @override
  @JsonKey(fromJson: _convertListOfProducts)
  List<ProductModel> get bestSellerProducts {
    if (_bestSellerProducts is EqualUnmodifiableListView)
      return _bestSellerProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bestSellerProducts);
  }

  final List<ProductModel> _newestProducts;
  @override
  @JsonKey(fromJson: _convertListOfProducts)
  List<ProductModel> get newestProducts {
    if (_newestProducts is EqualUnmodifiableListView) return _newestProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newestProducts);
  }

  @override
  String toString() {
    return 'HomeDataModel(sliderBanners: $sliderBanners, topCategories: $topCategories, discountedProducts: $discountedProducts, middleBanners: $middleBanners, bestSellerProducts: $bestSellerProducts, newestProducts: $newestProducts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeDataModelImpl &&
            const DeepCollectionEquality()
                .equals(other._sliderBanners, _sliderBanners) &&
            const DeepCollectionEquality()
                .equals(other._topCategories, _topCategories) &&
            const DeepCollectionEquality()
                .equals(other._discountedProducts, _discountedProducts) &&
            const DeepCollectionEquality()
                .equals(other._middleBanners, _middleBanners) &&
            const DeepCollectionEquality()
                .equals(other._bestSellerProducts, _bestSellerProducts) &&
            const DeepCollectionEquality()
                .equals(other._newestProducts, _newestProducts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_sliderBanners),
      const DeepCollectionEquality().hash(_topCategories),
      const DeepCollectionEquality().hash(_discountedProducts),
      const DeepCollectionEquality().hash(_middleBanners),
      const DeepCollectionEquality().hash(_bestSellerProducts),
      const DeepCollectionEquality().hash(_newestProducts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeDataModelImplCopyWith<_$HomeDataModelImpl> get copyWith =>
      __$$HomeDataModelImplCopyWithImpl<_$HomeDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeDataModelImplToJson(
      this,
    );
  }
}

abstract class _HomeDataModel extends HomeDataModel {
  const factory _HomeDataModel(
      {@JsonKey(fromJson: _convertListOfBanners)
      required final List<BannerModel> sliderBanners,
      @JsonKey(fromJson: _convertListOfCategories)
      required final List<CategoryModel> topCategories,
      @JsonKey(fromJson: _convertListOfProducts)
      required final List<ProductModel> discountedProducts,
      @JsonKey(fromJson: _convertListOfBanners)
      required final List<BannerModel> middleBanners,
      @JsonKey(fromJson: _convertListOfProducts)
      required final List<ProductModel> bestSellerProducts,
      @JsonKey(fromJson: _convertListOfProducts)
      required final List<ProductModel> newestProducts}) = _$HomeDataModelImpl;
  const _HomeDataModel._() : super._();

  factory _HomeDataModel.fromJson(Map<String, dynamic> json) =
      _$HomeDataModelImpl.fromJson;

  @override
  @JsonKey(fromJson: _convertListOfBanners)
  List<BannerModel> get sliderBanners;
  @override
  @JsonKey(fromJson: _convertListOfCategories)
  List<CategoryModel> get topCategories;
  @override
  @JsonKey(fromJson: _convertListOfProducts)
  List<ProductModel> get discountedProducts;
  @override
  @JsonKey(fromJson: _convertListOfBanners)
  List<BannerModel> get middleBanners;
  @override
  @JsonKey(fromJson: _convertListOfProducts)
  List<ProductModel> get bestSellerProducts;
  @override
  @JsonKey(fromJson: _convertListOfProducts)
  List<ProductModel> get newestProducts;
  @override
  @JsonKey(ignore: true)
  _$$HomeDataModelImplCopyWith<_$HomeDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

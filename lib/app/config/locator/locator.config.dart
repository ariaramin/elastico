// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:elastico/app/config/locator/locator.dart' as _i39;
import 'package:elastico/app/core/helpers/api_helper.dart' as _i10;
import 'package:elastico/app/core/helpers/hive_helper.dart' as _i4;
import 'package:elastico/app/core/helpers/network_helper.dart' as _i5;
import 'package:elastico/app/features/category/data/data_sources/category_datasource.dart'
    as _i11;
import 'package:elastico/app/features/category/data/repositories/category_repository_impl.dart'
    as _i13;
import 'package:elastico/app/features/category/domain/repositories/category_repository.dart'
    as _i12;
import 'package:elastico/app/features/category/domain/usecases/get_categories.dart'
    as _i17;
import 'package:elastico/app/features/comment/data/data_sources/comment_datasource.dart'
    as _i14;
import 'package:elastico/app/features/comment/data/repositories/comment_repository_impl.dart'
    as _i16;
import 'package:elastico/app/features/comment/domain/repositories/comment_repository.dart'
    as _i15;
import 'package:elastico/app/features/comment/domain/usecases/get_product_comments.dart'
    as _i18;
import 'package:elastico/app/features/home/data/data_sources/home_datasource.dart'
    as _i20;
import 'package:elastico/app/features/home/data/repositories/home_repository_impl.dart'
    as _i22;
import 'package:elastico/app/features/home/domain/repositories/home_repository.dart'
    as _i21;
import 'package:elastico/app/features/home/domain/usecases/get_home_data.dart'
    as _i34;
import 'package:elastico/app/features/product/data/data_sources/product_datasource.dart'
    as _i23;
import 'package:elastico/app/features/product/data/data_sources/product_detail_datasource.dart'
    as _i24;
import 'package:elastico/app/features/product/data/repositories/product_detail_repository_impl.dart'
    as _i26;
import 'package:elastico/app/features/product/data/repositories/product_repository_impl.dart'
    as _i28;
import 'package:elastico/app/features/product/domain/repositories/product_detail_repository.dart'
    as _i25;
import 'package:elastico/app/features/product/domain/repositories/product_repository.dart'
    as _i27;
import 'package:elastico/app/features/product/domain/usecases/get_product.dart'
    as _i35;
import 'package:elastico/app/features/product/domain/usecases/get_product_list.dart'
    as _i36;
import 'package:elastico/app/features/product/domain/usecases/get_product_variants.dart'
    as _i37;
import 'package:elastico/app/features/search/data/data_sources/search_datasource.dart'
    as _i30;
import 'package:elastico/app/features/search/data/repositories/search_repository_impl.dart'
    as _i32;
import 'package:elastico/app/features/search/domain/repositories/search_repository.dart'
    as _i31;
import 'package:elastico/app/features/search/domain/usecases/search_product.dart'
    as _i38;
import 'package:elastico/app/features/wishlist/data/data_sources/wishlist_datasource.dart'
    as _i6;
import 'package:elastico/app/features/wishlist/data/repositories/wishlist_repository_impl.dart'
    as _i8;
import 'package:elastico/app/features/wishlist/domain/repositories/wishlist_repository.dart'
    as _i7;
import 'package:elastico/app/features/wishlist/domain/usecases/add_item_to_wishlist.dart'
    as _i9;
import 'package:elastico/app/features/wishlist/domain/usecases/get_wishlist_items.dart'
    as _i19;
import 'package:elastico/app/features/wishlist/domain/usecases/remove_item_from_wishlist.dart'
    as _i29;
import 'package:elastico/app/features/wishlist/presentation/bloc/wishlist_bloc.dart'
    as _i33;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final serviceModule = _$ServiceModule();
    gh.lazySingleton<_i3.Dio>(() => serviceModule.dio);
    gh.factory<_i4.HiveHelper>(() => _i4.HiveHelper());
    gh.factory<_i5.NetworkHelper>(() => _i5.NetworkHelper());
    gh.factory<_i6.WishlistDatasource>(
        () => _i6.WishlistDatasourceImpl(hiveHelper: gh<_i4.HiveHelper>()));
    gh.factory<_i7.WishlistRepository>(() => _i8.WishlistRepositoryImpl(
        wishlistDatasource: gh<_i6.WishlistDatasource>()));
    gh.factory<_i9.AddItemToWishlist>(() => _i9.AddItemToWishlist(
        wishlistRepository: gh<_i7.WishlistRepository>()));
    gh.factory<_i10.ApiHelper>(() => _i10.ApiHelper(gh<_i3.Dio>()));
    gh.factory<_i11.CategoryDatasource>(
        () => _i11.CategoryDatasourceImpl(gh<_i10.ApiHelper>()));
    gh.factory<_i12.CategoryRepository>(
        () => _i13.CategoryRepositoryImpl(gh<_i11.CategoryDatasource>()));
    gh.factory<_i14.CommentDatasource>(
        () => _i14.CommentDatasourceImpl(gh<_i10.ApiHelper>()));
    gh.factory<_i15.CommentRepository>(
        () => _i16.CommentRepositoryImpl(gh<_i14.CommentDatasource>()));
    gh.factory<_i17.GetCategories>(
        () => _i17.GetCategories(gh<_i12.CategoryRepository>()));
    gh.factory<_i18.GetProductComments>(
        () => _i18.GetProductComments(gh<_i15.CommentRepository>()));
    gh.factory<_i19.GetWishlistItems>(() => _i19.GetWishlistItems(
        wishlistRepository: gh<_i7.WishlistRepository>()));
    gh.factory<_i20.HomeDatasource>(
        () => _i20.HomeDatasourceImpl(gh<_i10.ApiHelper>()));
    gh.factory<_i21.HomeRepository>(
        () => _i22.HomeRepositoryImpl(gh<_i20.HomeDatasource>()));
    gh.factory<_i23.ProductDatasource>(
        () => _i23.ProductDatasourceImpl(gh<_i10.ApiHelper>()));
    gh.factory<_i24.ProductDetailDatasource>(
        () => _i24.ProductDetailDatasourceImpl(gh<_i10.ApiHelper>()));
    gh.factory<_i25.ProductDetailRepository>(() =>
        _i26.ProductDetailRepositoryImpl(gh<_i24.ProductDetailDatasource>()));
    gh.factory<_i27.ProductRepository>(
        () => _i28.ProductRepositoryImpl(gh<_i23.ProductDatasource>()));
    gh.factory<_i29.RemoveItemFromWishlist>(() => _i29.RemoveItemFromWishlist(
        wishlistRepository: gh<_i7.WishlistRepository>()));
    gh.factory<_i30.SearchDatasource>(
        () => _i30.SearchDatasourceImpl(gh<_i10.ApiHelper>()));
    gh.factory<_i31.SearchRepository>(
        () => _i32.SearchRepositoryImpl(gh<_i30.SearchDatasource>()));
    gh.lazySingleton<_i33.WishlistBloc>(() => _i33.WishlistBloc(
          getWishlistItems: gh<_i19.GetWishlistItems>(),
          addItemToWishlist: gh<_i9.AddItemToWishlist>(),
          removeItemFromWishlist: gh<_i29.RemoveItemFromWishlist>(),
        ));
    gh.factory<_i34.GetHomeData>(
        () => _i34.GetHomeData(gh<_i21.HomeRepository>()));
    gh.factory<_i35.GetProduct>(
        () => _i35.GetProduct(gh<_i27.ProductRepository>()));
    gh.factory<_i36.GetProductList>(
        () => _i36.GetProductList(gh<_i27.ProductRepository>()));
    gh.factory<_i37.GetProductVariants>(
        () => _i37.GetProductVariants(gh<_i25.ProductDetailRepository>()));
    gh.factory<_i38.SearchProduct>(
        () => _i38.SearchProduct(gh<_i31.SearchRepository>()));
    return this;
  }
}

class _$ServiceModule extends _i39.ServiceModule {}

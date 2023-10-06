// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:elastico/app/config/locator/locator.dart' as _i40;
import 'package:elastico/app/core/helpers/hive_helper.dart' as _i4;
import 'package:elastico/app/core/helpers/network_helper.dart' as _i5;
import 'package:elastico/app/core/helpers/pocketbase_helper.dart' as _i7;
import 'package:elastico/app/features/category/data/data_sources/category_datasource.dart'
    as _i21;
import 'package:elastico/app/features/category/data/repositories/category_repository_impl.dart'
    as _i23;
import 'package:elastico/app/features/category/domain/repositories/category_repository.dart'
    as _i22;
import 'package:elastico/app/features/category/domain/usecases/get_categories.dart'
    as _i27;
import 'package:elastico/app/features/comment/data/data_sources/comment_datasource.dart'
    as _i24;
import 'package:elastico/app/features/comment/data/repositories/comment_repository_impl.dart'
    as _i26;
import 'package:elastico/app/features/comment/domain/repositories/comment_repository.dart'
    as _i25;
import 'package:elastico/app/features/comment/domain/usecases/get_product_comments.dart'
    as _i29;
import 'package:elastico/app/features/home/data/data_sources/home_datasource.dart'
    as _i33;
import 'package:elastico/app/features/home/data/repositories/home_repository_impl.dart'
    as _i35;
import 'package:elastico/app/features/home/domain/repositories/home_repository.dart'
    as _i34;
import 'package:elastico/app/features/home/domain/usecases/get_home_data.dart'
    as _i39;
import 'package:elastico/app/features/product/data/data_sources/product_datasource.dart'
    as _i8;
import 'package:elastico/app/features/product/data/data_sources/product_detail_datasource.dart'
    as _i9;
import 'package:elastico/app/features/product/data/repositories/product_detail_repository_impl.dart'
    as _i11;
import 'package:elastico/app/features/product/data/repositories/product_repository_impl.dart'
    as _i13;
import 'package:elastico/app/features/product/domain/repositories/product_detail_repository.dart'
    as _i10;
import 'package:elastico/app/features/product/domain/repositories/product_repository.dart'
    as _i12;
import 'package:elastico/app/features/product/domain/usecases/get_product.dart'
    as _i28;
import 'package:elastico/app/features/product/domain/usecases/get_product_list.dart'
    as _i30;
import 'package:elastico/app/features/product/domain/usecases/get_product_variants.dart'
    as _i31;
import 'package:elastico/app/features/search/data/data_sources/search_datasource.dart'
    as _i14;
import 'package:elastico/app/features/search/data/repositories/search_repository_impl.dart'
    as _i16;
import 'package:elastico/app/features/search/domain/repositories/search_repository.dart'
    as _i15;
import 'package:elastico/app/features/search/domain/usecases/search_product.dart'
    as _i37;
import 'package:elastico/app/features/wishlist/data/data_sources/wishlist_datasource.dart'
    as _i17;
import 'package:elastico/app/features/wishlist/data/repositories/wishlist_repository_impl.dart'
    as _i19;
import 'package:elastico/app/features/wishlist/domain/repositories/wishlist_repository.dart'
    as _i18;
import 'package:elastico/app/features/wishlist/domain/usecases/add_item_to_wishlist.dart'
    as _i20;
import 'package:elastico/app/features/wishlist/domain/usecases/get_wishlist_items.dart'
    as _i32;
import 'package:elastico/app/features/wishlist/domain/usecases/remove_item_from_wishlist.dart'
    as _i36;
import 'package:elastico/app/features/wishlist/presentation/bloc/wishlist_bloc.dart'
    as _i38;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:pocketbase/pocketbase.dart' as _i6;

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
    gh.lazySingleton<_i6.PocketBase>(() => serviceModule.pb);
    gh.factory<_i7.PocketBaseHelper>(
        () => _i7.PocketBaseHelper(gh<_i6.PocketBase>()));
    gh.factory<_i8.ProductDatasource>(
        () => _i8.ProductDatasourceImpl(gh<_i7.PocketBaseHelper>()));
    gh.factory<_i9.ProductDetailDatasource>(
        () => _i9.ProductDetailDatasourceImpl(gh<_i7.PocketBaseHelper>()));
    gh.factory<_i10.ProductDetailRepository>(() =>
        _i11.ProductDetailRepositoryImpl(gh<_i9.ProductDetailDatasource>()));
    gh.factory<_i12.ProductRepository>(
        () => _i13.ProductRepositoryImpl(gh<_i8.ProductDatasource>()));
    gh.factory<_i14.SearchDatasource>(
        () => _i14.SearchDatasourceImpl(gh<_i7.PocketBaseHelper>()));
    gh.factory<_i15.SearchRepository>(
        () => _i16.SearchRepositoryImpl(gh<_i14.SearchDatasource>()));
    gh.factory<_i17.WishlistDatasource>(
        () => _i17.WishlistDatasourceImpl(hiveHelper: gh<_i4.HiveHelper>()));
    gh.factory<_i18.WishlistRepository>(() => _i19.WishlistRepositoryImpl(
        wishlistDatasource: gh<_i17.WishlistDatasource>()));
    gh.factory<_i20.AddItemToWishlist>(() => _i20.AddItemToWishlist(
        wishlistRepository: gh<_i18.WishlistRepository>()));
    gh.factory<_i21.CategoryDatasource>(
        () => _i21.CategoryDatasourceImpl(gh<_i7.PocketBaseHelper>()));
    gh.factory<_i22.CategoryRepository>(
        () => _i23.CategoryRepositoryImpl(gh<_i21.CategoryDatasource>()));
    gh.factory<_i24.CommentDatasource>(
        () => _i24.CommentDatasourceImpl(gh<_i7.PocketBaseHelper>()));
    gh.factory<_i25.CommentRepository>(
        () => _i26.CommentRepositoryImpl(gh<_i24.CommentDatasource>()));
    gh.factory<_i27.GetCategories>(
        () => _i27.GetCategories(gh<_i22.CategoryRepository>()));
    gh.factory<_i28.GetProduct>(
        () => _i28.GetProduct(gh<_i12.ProductRepository>()));
    gh.factory<_i29.GetProductComments>(
        () => _i29.GetProductComments(gh<_i25.CommentRepository>()));
    gh.factory<_i30.GetProductList>(
        () => _i30.GetProductList(gh<_i12.ProductRepository>()));
    gh.factory<_i31.GetProductVariants>(
        () => _i31.GetProductVariants(gh<_i10.ProductDetailRepository>()));
    gh.factory<_i32.GetWishlistItems>(() => _i32.GetWishlistItems(
        wishlistRepository: gh<_i18.WishlistRepository>()));
    gh.factory<_i33.HomeDatasource>(
        () => _i33.HomeDatasourceImpl(gh<_i7.PocketBaseHelper>()));
    gh.factory<_i34.HomeRepository>(
        () => _i35.HomeRepositoryImpl(gh<_i33.HomeDatasource>()));
    gh.factory<_i36.RemoveItemFromWishlist>(() => _i36.RemoveItemFromWishlist(
        wishlistRepository: gh<_i18.WishlistRepository>()));
    gh.factory<_i37.SearchProduct>(
        () => _i37.SearchProduct(gh<_i15.SearchRepository>()));
    gh.lazySingleton<_i38.WishlistBloc>(() => _i38.WishlistBloc(
          getWishlistItems: gh<_i32.GetWishlistItems>(),
          addItemToWishlist: gh<_i20.AddItemToWishlist>(),
          removeItemFromWishlist: gh<_i36.RemoveItemFromWishlist>(),
        ));
    gh.factory<_i39.GetHomeData>(
        () => _i39.GetHomeData(gh<_i34.HomeRepository>()));
    return this;
  }
}

class _$ServiceModule extends _i40.ServiceModule {}

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:elastico/app/config/locator/locator.dart' as _i50;
import 'package:elastico/app/config/theme/cubit/theme_cubit.dart' as _i19;
import 'package:elastico/app/core/helpers/auth_helper.dart' as _i25;
import 'package:elastico/app/core/helpers/hive_helper.dart' as _i5;
import 'package:elastico/app/core/helpers/network_helper.dart' as _i6;
import 'package:elastico/app/core/helpers/pocketbase_helper.dart' as _i8;
import 'package:elastico/app/features/auth/data/data_sources/auth_datasource.dart'
    as _i24;
import 'package:elastico/app/features/auth/data/repositories/auth_repository_impl.dart'
    as _i27;
import 'package:elastico/app/features/auth/domain/repositories/auth_repository.dart'
    as _i26;
import 'package:elastico/app/features/auth/domain/usecases/login.dart' as _i43;
import 'package:elastico/app/features/auth/domain/usecases/register.dart'
    as _i44;
import 'package:elastico/app/features/auth/presentation/bloc/app_bloc.dart'
    as _i48;
import 'package:elastico/app/features/category/data/data_sources/category_datasource.dart'
    as _i28;
import 'package:elastico/app/features/category/data/repositories/category_repository_impl.dart'
    as _i30;
import 'package:elastico/app/features/category/domain/repositories/category_repository.dart'
    as _i29;
import 'package:elastico/app/features/category/domain/usecases/get_categories.dart'
    as _i34;
import 'package:elastico/app/features/comment/data/data_sources/comment_datasource.dart'
    as _i31;
import 'package:elastico/app/features/comment/data/repositories/comment_repository_impl.dart'
    as _i33;
import 'package:elastico/app/features/comment/domain/repositories/comment_repository.dart'
    as _i32;
import 'package:elastico/app/features/comment/domain/usecases/get_product_comments.dart'
    as _i36;
import 'package:elastico/app/features/home/data/data_sources/home_datasource.dart'
    as _i40;
import 'package:elastico/app/features/home/data/repositories/home_repository_impl.dart'
    as _i42;
import 'package:elastico/app/features/home/domain/repositories/home_repository.dart'
    as _i41;
import 'package:elastico/app/features/home/domain/usecases/get_home_data.dart'
    as _i49;
import 'package:elastico/app/features/product/data/data_sources/product_datasource.dart'
    as _i9;
import 'package:elastico/app/features/product/data/data_sources/product_detail_datasource.dart'
    as _i10;
import 'package:elastico/app/features/product/data/repositories/product_detail_repository_impl.dart'
    as _i12;
import 'package:elastico/app/features/product/data/repositories/product_repository_impl.dart'
    as _i14;
import 'package:elastico/app/features/product/domain/repositories/product_detail_repository.dart'
    as _i11;
import 'package:elastico/app/features/product/domain/repositories/product_repository.dart'
    as _i13;
import 'package:elastico/app/features/product/domain/usecases/get_product.dart'
    as _i35;
import 'package:elastico/app/features/product/domain/usecases/get_product_list.dart'
    as _i37;
import 'package:elastico/app/features/product/domain/usecases/get_product_variants.dart'
    as _i38;
import 'package:elastico/app/features/search/data/data_sources/search_datasource.dart'
    as _i15;
import 'package:elastico/app/features/search/data/repositories/search_repository_impl.dart'
    as _i17;
import 'package:elastico/app/features/search/domain/repositories/search_repository.dart'
    as _i16;
import 'package:elastico/app/features/search/domain/usecases/search_product.dart'
    as _i46;
import 'package:elastico/app/features/wishlist/data/data_sources/wishlist_datasource.dart'
    as _i20;
import 'package:elastico/app/features/wishlist/data/repositories/wishlist_repository_impl.dart'
    as _i22;
import 'package:elastico/app/features/wishlist/domain/repositories/wishlist_repository.dart'
    as _i21;
import 'package:elastico/app/features/wishlist/domain/usecases/add_item_to_wishlist.dart'
    as _i23;
import 'package:elastico/app/features/wishlist/domain/usecases/get_wishlist_items.dart'
    as _i39;
import 'package:elastico/app/features/wishlist/domain/usecases/remove_item_from_wishlist.dart'
    as _i45;
import 'package:elastico/app/features/wishlist/presentation/bloc/wishlist_bloc.dart'
    as _i47;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:pocketbase/pocketbase.dart' as _i7;
import 'package:shared_preferences/shared_preferences.dart' as _i18;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final serviceModule = _$ServiceModule();
    gh.lazySingleton<_i3.Dio>(() => serviceModule.dio);
    gh.lazySingleton<_i4.FlutterSecureStorage>(() => serviceModule.storage);
    gh.factory<_i5.HiveHelper>(() => _i5.HiveHelper());
    gh.factory<_i6.NetworkHelper>(() => _i6.NetworkHelper());
    gh.lazySingleton<_i7.PocketBase>(() => serviceModule.pb);
    gh.factory<_i8.PocketBaseHelper>(
        () => _i8.PocketBaseHelper(gh<_i7.PocketBase>()));
    gh.factory<_i9.ProductDatasource>(
        () => _i9.ProductDatasourceImpl(gh<_i8.PocketBaseHelper>()));
    gh.factory<_i10.ProductDetailDatasource>(
        () => _i10.ProductDetailDatasourceImpl(gh<_i8.PocketBaseHelper>()));
    gh.factory<_i11.ProductDetailRepository>(() =>
        _i12.ProductDetailRepositoryImpl(gh<_i10.ProductDetailDatasource>()));
    gh.factory<_i13.ProductRepository>(
        () => _i14.ProductRepositoryImpl(gh<_i9.ProductDatasource>()));
    gh.factory<_i15.SearchDatasource>(
        () => _i15.SearchDatasourceImpl(gh<_i8.PocketBaseHelper>()));
    gh.factory<_i16.SearchRepository>(
        () => _i17.SearchRepositoryImpl(gh<_i15.SearchDatasource>()));
    await gh.lazySingletonAsync<_i18.SharedPreferences>(
      () => serviceModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i19.ThemeCubit>(
        () => _i19.ThemeCubit(gh<_i18.SharedPreferences>()));
    gh.factory<_i20.WishlistDatasource>(
        () => _i20.WishlistDatasourceImpl(hiveHelper: gh<_i5.HiveHelper>()));
    gh.factory<_i21.WishlistRepository>(() => _i22.WishlistRepositoryImpl(
        wishlistDatasource: gh<_i20.WishlistDatasource>()));
    gh.factory<_i23.AddItemToWishlist>(() => _i23.AddItemToWishlist(
        wishlistRepository: gh<_i21.WishlistRepository>()));
    gh.factory<_i24.AuthDataSource>(
        () => _i24.AuthDatasourceImpl(gh<_i8.PocketBaseHelper>()));
    gh.lazySingleton<_i25.AuthHelper>(() => _i25.AuthHelper(
          gh<_i7.PocketBase>(),
          gh<_i4.FlutterSecureStorage>(),
        ));
    gh.factory<_i26.AuthRepository>(
        () => _i27.AuthRepositoryImpl(gh<_i24.AuthDataSource>()));
    gh.factory<_i28.CategoryDatasource>(
        () => _i28.CategoryDatasourceImpl(gh<_i8.PocketBaseHelper>()));
    gh.factory<_i29.CategoryRepository>(
        () => _i30.CategoryRepositoryImpl(gh<_i28.CategoryDatasource>()));
    gh.factory<_i31.CommentDatasource>(
        () => _i31.CommentDatasourceImpl(gh<_i8.PocketBaseHelper>()));
    gh.factory<_i32.CommentRepository>(
        () => _i33.CommentRepositoryImpl(gh<_i31.CommentDatasource>()));
    gh.factory<_i34.GetCategories>(
        () => _i34.GetCategories(gh<_i29.CategoryRepository>()));
    gh.factory<_i35.GetProduct>(
        () => _i35.GetProduct(gh<_i13.ProductRepository>()));
    gh.factory<_i36.GetProductComments>(
        () => _i36.GetProductComments(gh<_i32.CommentRepository>()));
    gh.factory<_i37.GetProductList>(
        () => _i37.GetProductList(gh<_i13.ProductRepository>()));
    gh.factory<_i38.GetProductVariants>(
        () => _i38.GetProductVariants(gh<_i11.ProductDetailRepository>()));
    gh.factory<_i39.GetWishlistItems>(() => _i39.GetWishlistItems(
        wishlistRepository: gh<_i21.WishlistRepository>()));
    gh.factory<_i40.HomeDatasource>(
        () => _i40.HomeDatasourceImpl(gh<_i8.PocketBaseHelper>()));
    gh.factory<_i41.HomeRepository>(
        () => _i42.HomeRepositoryImpl(gh<_i40.HomeDatasource>()));
    gh.factory<_i43.Login>(() => _i43.Login(gh<_i26.AuthRepository>()));
    gh.factory<_i44.Register>(() => _i44.Register(gh<_i26.AuthRepository>()));
    gh.factory<_i45.RemoveItemFromWishlist>(() => _i45.RemoveItemFromWishlist(
        wishlistRepository: gh<_i21.WishlistRepository>()));
    gh.factory<_i46.SearchProduct>(
        () => _i46.SearchProduct(gh<_i16.SearchRepository>()));
    gh.lazySingleton<_i47.WishlistBloc>(() => _i47.WishlistBloc(
          getWishlistItems: gh<_i39.GetWishlistItems>(),
          addItemToWishlist: gh<_i23.AddItemToWishlist>(),
          removeItemFromWishlist: gh<_i45.RemoveItemFromWishlist>(),
        ));
    gh.lazySingleton<_i48.AppBloc>(() => _i48.AppBloc(gh<_i25.AuthHelper>()));
    gh.factory<_i49.GetHomeData>(
        () => _i49.GetHomeData(gh<_i41.HomeRepository>()));
    return this;
  }
}

class _$ServiceModule extends _i50.ServiceModule {}

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:elastico/app/config/locator/locator.dart' as _i59;
import 'package:elastico/app/config/theme/cubit/theme_cubit.dart' as _i21;
import 'package:elastico/app/core/services/local/hive_service.dart' as _i5;
import 'package:elastico/app/core/services/remote/auth_service.dart' as _i22;
import 'package:elastico/app/core/services/remote/network_service.dart' as _i6;
import 'package:elastico/app/core/services/remote/payment_service.dart' as _i8;
import 'package:elastico/app/core/services/remote/pocketbase_service.dart'
    as _i10;
import 'package:elastico/app/features/auth/data/data_sources/auth_datasource.dart'
    as _i48;
import 'package:elastico/app/features/auth/data/repositories/auth_repository_impl.dart'
    as _i50;
import 'package:elastico/app/features/auth/domain/repositories/auth_repository.dart'
    as _i49;
import 'package:elastico/app/features/auth/domain/usecases/login.dart' as _i54;
import 'package:elastico/app/features/auth/domain/usecases/register.dart'
    as _i55;
import 'package:elastico/app/features/auth/presentation/bloc/app_bloc.dart'
    as _i58;
import 'package:elastico/app/features/cart/data/data_sources/cart_datasource.dart'
    as _i23;
import 'package:elastico/app/features/cart/data/repositories/cart_repository_impl.dart'
    as _i25;
import 'package:elastico/app/features/cart/domain/repositories/cart_repository.dart'
    as _i24;
import 'package:elastico/app/features/cart/domain/usecases/add_to_cart.dart'
    as _i46;
import 'package:elastico/app/features/cart/domain/usecases/get_cart.dart'
    as _i32;
import 'package:elastico/app/features/cart/domain/usecases/remove_from_cart.dart'
    as _i41;
import 'package:elastico/app/features/cart/presentation/bloc/cart_bloc.dart'
    as _i51;
import 'package:elastico/app/features/category/data/data_sources/category_datasource.dart'
    as _i26;
import 'package:elastico/app/features/category/data/repositories/category_repository_impl.dart'
    as _i28;
import 'package:elastico/app/features/category/domain/repositories/category_repository.dart'
    as _i27;
import 'package:elastico/app/features/category/domain/usecases/get_main_categories.dart'
    as _i33;
import 'package:elastico/app/features/comment/data/data_sources/comment_datasource.dart'
    as _i29;
import 'package:elastico/app/features/comment/data/repositories/comment_repository_impl.dart'
    as _i31;
import 'package:elastico/app/features/comment/domain/repositories/comment_repository.dart'
    as _i30;
import 'package:elastico/app/features/comment/domain/usecases/get_product_comments.dart'
    as _i35;
import 'package:elastico/app/features/home/data/data_sources/home_datasource.dart'
    as _i38;
import 'package:elastico/app/features/home/data/repositories/home_repository_impl.dart'
    as _i40;
import 'package:elastico/app/features/home/domain/repositories/home_repository.dart'
    as _i39;
import 'package:elastico/app/features/home/domain/usecases/get_home_data.dart'
    as _i52;
import 'package:elastico/app/features/product/data/data_sources/product_datasource.dart'
    as _i11;
import 'package:elastico/app/features/product/data/data_sources/product_detail_datasource.dart'
    as _i12;
import 'package:elastico/app/features/product/data/repositories/product_detail_repository_impl.dart'
    as _i14;
import 'package:elastico/app/features/product/data/repositories/product_repository_impl.dart'
    as _i16;
import 'package:elastico/app/features/product/domain/repositories/product_detail_repository.dart'
    as _i13;
import 'package:elastico/app/features/product/domain/repositories/product_repository.dart'
    as _i15;
import 'package:elastico/app/features/product/domain/usecases/get_product.dart'
    as _i34;
import 'package:elastico/app/features/product/domain/usecases/get_product_list.dart'
    as _i36;
import 'package:elastico/app/features/product/domain/usecases/get_product_variants.dart'
    as _i37;
import 'package:elastico/app/features/search/data/data_sources/search_datasource.dart'
    as _i17;
import 'package:elastico/app/features/search/data/repositories/search_repository_impl.dart'
    as _i19;
import 'package:elastico/app/features/search/domain/repositories/search_repository.dart'
    as _i18;
import 'package:elastico/app/features/search/domain/usecases/search_product.dart'
    as _i42;
import 'package:elastico/app/features/wishlist/data/data_sources/wishlist_datasource.dart'
    as _i43;
import 'package:elastico/app/features/wishlist/data/repositories/wishlist_repository_impl.dart'
    as _i45;
import 'package:elastico/app/features/wishlist/domain/repositories/wishlist_repository.dart'
    as _i44;
import 'package:elastico/app/features/wishlist/domain/usecases/add_to_wishlist.dart'
    as _i47;
import 'package:elastico/app/features/wishlist/domain/usecases/get_wishlist.dart'
    as _i53;
import 'package:elastico/app/features/wishlist/domain/usecases/remove_from_wishlist.dart'
    as _i56;
import 'package:elastico/app/features/wishlist/presentation/bloc/wishlist_bloc.dart'
    as _i57;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:pocketbase/pocketbase.dart' as _i9;
import 'package:shared_preferences/shared_preferences.dart' as _i20;
import 'package:zarinpal/zarinpal.dart' as _i7;

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
    gh.lazySingleton<_i5.HiveService>(() => _i5.HiveService());
    gh.lazySingleton<_i6.NetworkService>(() => _i6.NetworkService());
    gh.factory<_i7.PaymentRequest>(() => serviceModule.paymentRequest);
    gh.lazySingleton<_i8.PaymentService>(
        () => _i8.ZarinpalPaymentService(gh<_i7.PaymentRequest>()));
    gh.lazySingleton<_i9.PocketBase>(() => serviceModule.pb);
    gh.lazySingleton<_i10.PocketBaseService>(
        () => _i10.PocketBaseService(gh<_i9.PocketBase>()));
    gh.factory<_i11.ProductDatasource>(
        () => _i11.ProductDatasourceImpl(gh<_i10.PocketBaseService>()));
    gh.factory<_i12.ProductDetailDatasource>(
        () => _i12.ProductDetailDatasourceImpl(gh<_i10.PocketBaseService>()));
    gh.factory<_i13.ProductDetailRepository>(() =>
        _i14.ProductDetailRepositoryImpl(gh<_i12.ProductDetailDatasource>()));
    gh.factory<_i15.ProductRepository>(
        () => _i16.ProductRepositoryImpl(gh<_i11.ProductDatasource>()));
    gh.factory<_i17.SearchDatasource>(
        () => _i17.SearchDatasourceImpl(gh<_i10.PocketBaseService>()));
    gh.factory<_i18.SearchRepository>(
        () => _i19.SearchRepositoryImpl(gh<_i17.SearchDatasource>()));
    await gh.lazySingletonAsync<_i20.SharedPreferences>(
      () => serviceModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i21.ThemeCubit>(
        () => _i21.ThemeCubit(gh<_i20.SharedPreferences>()));
    gh.lazySingleton<_i22.AuthService>(() => _i22.AuthService(
          gh<_i9.PocketBase>(),
          gh<_i4.FlutterSecureStorage>(),
        ));
    gh.factory<_i23.CartDatasource>(() => _i23.CartDatasourceImpl(
          gh<_i5.HiveService>(),
          gh<_i22.AuthService>(),
        ));
    gh.factory<_i24.CartRepository>(
        () => _i25.CartRepositoryImpl(gh<_i23.CartDatasource>()));
    gh.factory<_i26.CategoryDatasource>(
        () => _i26.CategoryDatasourceImpl(gh<_i10.PocketBaseService>()));
    gh.factory<_i27.CategoryRepository>(
        () => _i28.CategoryRepositoryImpl(gh<_i26.CategoryDatasource>()));
    gh.factory<_i29.CommentDatasource>(
        () => _i29.CommentDatasourceImpl(gh<_i10.PocketBaseService>()));
    gh.factory<_i30.CommentRepository>(
        () => _i31.CommentRepositoryImpl(gh<_i29.CommentDatasource>()));
    gh.factory<_i32.GetCart>(() => _i32.GetCart(gh<_i24.CartRepository>()));
    gh.factory<_i33.GetMainCategories>(
        () => _i33.GetMainCategories(gh<_i27.CategoryRepository>()));
    gh.factory<_i34.GetProduct>(
        () => _i34.GetProduct(gh<_i15.ProductRepository>()));
    gh.factory<_i35.GetProductComments>(
        () => _i35.GetProductComments(gh<_i30.CommentRepository>()));
    gh.factory<_i36.GetProductList>(
        () => _i36.GetProductList(gh<_i15.ProductRepository>()));
    gh.factory<_i37.GetProductVariants>(
        () => _i37.GetProductVariants(gh<_i13.ProductDetailRepository>()));
    gh.factory<_i38.HomeDatasource>(
        () => _i38.HomeDatasourceImpl(gh<_i10.PocketBaseService>()));
    gh.factory<_i39.HomeRepository>(
        () => _i40.HomeRepositoryImpl(gh<_i38.HomeDatasource>()));
    gh.factory<_i41.RemoveFromCart>(
        () => _i41.RemoveFromCart(gh<_i24.CartRepository>()));
    gh.factory<_i42.SearchProduct>(
        () => _i42.SearchProduct(gh<_i18.SearchRepository>()));
    gh.factory<_i43.WishlistDatasource>(() => _i43.WishlistDatasourceImpl(
          gh<_i5.HiveService>(),
          gh<_i22.AuthService>(),
        ));
    gh.factory<_i44.WishlistRepository>(
        () => _i45.WishlistRepositoryImpl(gh<_i43.WishlistDatasource>()));
    gh.factory<_i46.AddToCart>(() => _i46.AddToCart(gh<_i24.CartRepository>()));
    gh.factory<_i47.AddToWishlist>(
        () => _i47.AddToWishlist(gh<_i44.WishlistRepository>()));
    gh.factory<_i48.AuthDataSource>(
        () => _i48.AuthDatasourceImpl(gh<_i22.AuthService>()));
    gh.factory<_i49.AuthRepository>(
        () => _i50.AuthRepositoryImpl(gh<_i48.AuthDataSource>()));
    gh.lazySingleton<_i51.CartBloc>(() => _i51.CartBloc(
          gh<_i32.GetCart>(),
          gh<_i46.AddToCart>(),
          gh<_i41.RemoveFromCart>(),
        ));
    gh.factory<_i52.GetHomeData>(
        () => _i52.GetHomeData(gh<_i39.HomeRepository>()));
    gh.factory<_i53.GetWishlist>(
        () => _i53.GetWishlist(gh<_i44.WishlistRepository>()));
    gh.factory<_i54.Login>(() => _i54.Login(gh<_i49.AuthRepository>()));
    gh.factory<_i55.Register>(() => _i55.Register(gh<_i49.AuthRepository>()));
    gh.factory<_i56.RemoveFromWishlist>(
        () => _i56.RemoveFromWishlist(gh<_i44.WishlistRepository>()));
    gh.lazySingleton<_i57.WishlistBloc>(() => _i57.WishlistBloc(
          gh<_i53.GetWishlist>(),
          gh<_i47.AddToWishlist>(),
          gh<_i56.RemoveFromWishlist>(),
        ));
    gh.lazySingleton<_i58.AppBloc>(() => _i58.AppBloc(
          gh<_i22.AuthService>(),
          gh<_i57.WishlistBloc>(),
          gh<_i51.CartBloc>(),
        ));
    return this;
  }
}

class _$ServiceModule extends _i59.ServiceModule {}

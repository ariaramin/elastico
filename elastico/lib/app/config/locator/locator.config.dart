// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:elastico/app/config/locator/locator.dart' as _i63;
import 'package:elastico/app/core/services/local/hive_service.dart' as _i5;
import 'package:elastico/app/core/services/remote/auth_service.dart' as _i11;
import 'package:elastico/app/core/services/remote/network_service.dart' as _i6;
import 'package:elastico/app/core/services/remote/payment_service.dart' as _i8;
import 'package:elastico/app/core/services/remote/pocketbase_service.dart'
    as _i16;
import 'package:elastico/app/features/auth/data/data_sources/auth_datasource.dart'
    as _i33;
import 'package:elastico/app/features/auth/data/repositories/auth_repository_impl.dart'
    as _i35;
import 'package:elastico/app/features/auth/domain/repositories/auth_repository.dart'
    as _i34;
import 'package:elastico/app/features/auth/domain/usecases/login.dart' as _i54;
import 'package:elastico/app/features/auth/domain/usecases/register.dart'
    as _i55;
import 'package:elastico/app/features/auth/presentation/bloc/app_bloc.dart'
    as _i61;
import 'package:elastico/app/features/auth/presentation/cubit/settings/settings_cubit.dart'
    as _i27;
import 'package:elastico/app/features/cart/data/data_sources/cart_datasource.dart'
    as _i12;
import 'package:elastico/app/features/cart/data/repositories/cart_repository_impl.dart'
    as _i14;
import 'package:elastico/app/features/cart/domain/repositories/cart_repository.dart'
    as _i13;
import 'package:elastico/app/features/cart/domain/usecases/add_to_cart.dart'
    as _i31;
import 'package:elastico/app/features/cart/domain/usecases/get_cart.dart'
    as _i15;
import 'package:elastico/app/features/cart/domain/usecases/remove_from_cart.dart'
    as _i23;
import 'package:elastico/app/features/cart/presentation/bloc/cart_bloc.dart'
    as _i36;
import 'package:elastico/app/features/category/data/data_sources/category_datasource.dart'
    as _i37;
import 'package:elastico/app/features/category/data/repositories/category_repository_impl.dart'
    as _i39;
import 'package:elastico/app/features/category/domain/repositories/category_repository.dart'
    as _i38;
import 'package:elastico/app/features/category/domain/usecases/get_main_categories.dart'
    as _i45;
import 'package:elastico/app/features/comment/data/data_sources/comment_datasource.dart'
    as _i40;
import 'package:elastico/app/features/comment/data/repositories/comment_repository_impl.dart'
    as _i42;
import 'package:elastico/app/features/comment/domain/repositories/comment_repository.dart'
    as _i41;
import 'package:elastico/app/features/comment/domain/usecases/add_comment.dart'
    as _i60;
import 'package:elastico/app/features/comment/domain/usecases/delete_comment.dart'
    as _i43;
import 'package:elastico/app/features/comment/domain/usecases/get_product_comments.dart'
    as _i47;
import 'package:elastico/app/features/comment/domain/usecases/update_comment.dart'
    as _i58;
import 'package:elastico/app/features/home/data/data_sources/home_datasource.dart'
    as _i51;
import 'package:elastico/app/features/home/data/repositories/home_repository_impl.dart'
    as _i53;
import 'package:elastico/app/features/home/domain/repositories/home_repository.dart'
    as _i52;
import 'package:elastico/app/features/home/domain/usecases/get_home_data.dart'
    as _i62;
import 'package:elastico/app/features/product/data/data_sources/product_datasource.dart'
    as _i17;
import 'package:elastico/app/features/product/data/data_sources/product_detail_datasource.dart'
    as _i18;
import 'package:elastico/app/features/product/data/repositories/product_detail_repository_impl.dart'
    as _i20;
import 'package:elastico/app/features/product/data/repositories/product_repository_impl.dart'
    as _i22;
import 'package:elastico/app/features/product/domain/repositories/product_detail_repository.dart'
    as _i19;
import 'package:elastico/app/features/product/domain/repositories/product_repository.dart'
    as _i21;
import 'package:elastico/app/features/product/domain/usecases/get_product.dart'
    as _i46;
import 'package:elastico/app/features/product/domain/usecases/get_product_list.dart'
    as _i48;
import 'package:elastico/app/features/product/domain/usecases/get_product_variants.dart'
    as _i49;
import 'package:elastico/app/features/search/data/data_sources/search_datasource.dart'
    as _i24;
import 'package:elastico/app/features/search/data/repositories/search_repository_impl.dart'
    as _i26;
import 'package:elastico/app/features/search/domain/repositories/search_repository.dart'
    as _i25;
import 'package:elastico/app/features/search/domain/usecases/get_filters.dart'
    as _i44;
import 'package:elastico/app/features/search/domain/usecases/search_product.dart'
    as _i57;
import 'package:elastico/app/features/wishlist/data/data_sources/wishlist_datasource.dart'
    as _i28;
import 'package:elastico/app/features/wishlist/data/repositories/wishlist_repository_impl.dart'
    as _i30;
import 'package:elastico/app/features/wishlist/domain/repositories/wishlist_repository.dart'
    as _i29;
import 'package:elastico/app/features/wishlist/domain/usecases/add_to_wishlist.dart'
    as _i32;
import 'package:elastico/app/features/wishlist/domain/usecases/get_wishlist.dart'
    as _i50;
import 'package:elastico/app/features/wishlist/domain/usecases/remove_from_wishlist.dart'
    as _i56;
import 'package:elastico/app/features/wishlist/presentation/bloc/wishlist_bloc.dart'
    as _i59;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:pocketbase/pocketbase.dart' as _i9;
import 'package:shared_preferences/shared_preferences.dart' as _i10;
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
    await gh.lazySingletonAsync<_i10.SharedPreferences>(
      () => serviceModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i11.AuthService>(() => _i11.AuthService(
          gh<_i9.PocketBase>(),
          gh<_i4.FlutterSecureStorage>(),
        ));
    gh.factory<_i12.CartDatasource>(() => _i12.CartDatasourceImpl(
          gh<_i5.HiveService>(),
          gh<_i11.AuthService>(),
        ));
    gh.factory<_i13.CartRepository>(
        () => _i14.CartRepositoryImpl(gh<_i12.CartDatasource>()));
    gh.factory<_i15.GetCart>(() => _i15.GetCart(gh<_i13.CartRepository>()));
    gh.lazySingleton<_i16.PocketBaseService>(() => _i16.PocketBaseService(
          gh<_i9.PocketBase>(),
          gh<_i11.AuthService>(),
        ));
    gh.factory<_i17.ProductDatasource>(
        () => _i17.ProductDatasourceImpl(gh<_i16.PocketBaseService>()));
    gh.factory<_i18.ProductDetailDatasource>(
        () => _i18.ProductDetailDatasourceImpl(gh<_i16.PocketBaseService>()));
    gh.factory<_i19.ProductDetailRepository>(() =>
        _i20.ProductDetailRepositoryImpl(gh<_i18.ProductDetailDatasource>()));
    gh.factory<_i21.ProductRepository>(
        () => _i22.ProductRepositoryImpl(gh<_i17.ProductDatasource>()));
    gh.factory<_i23.RemoveFromCart>(
        () => _i23.RemoveFromCart(gh<_i13.CartRepository>()));
    gh.factory<_i24.SearchDatasource>(
        () => _i24.SearchDatasourceImpl(gh<_i16.PocketBaseService>()));
    gh.factory<_i25.SearchRepository>(
        () => _i26.SearchRepositoryImpl(gh<_i24.SearchDatasource>()));
    gh.lazySingleton<_i27.SettingsCubit>(
        () => _i27.SettingsCubit(gh<_i10.SharedPreferences>()));
    gh.factory<_i28.WishlistDatasource>(() => _i28.WishlistDatasourceImpl(
          gh<_i5.HiveService>(),
          gh<_i11.AuthService>(),
        ));
    gh.factory<_i29.WishlistRepository>(
        () => _i30.WishlistRepositoryImpl(gh<_i28.WishlistDatasource>()));
    gh.factory<_i31.AddToCart>(() => _i31.AddToCart(gh<_i13.CartRepository>()));
    gh.factory<_i32.AddToWishlist>(
        () => _i32.AddToWishlist(gh<_i29.WishlistRepository>()));
    gh.factory<_i33.AuthDataSource>(
        () => _i33.AuthDatasourceImpl(gh<_i11.AuthService>()));
    gh.factory<_i34.AuthRepository>(
        () => _i35.AuthRepositoryImpl(gh<_i33.AuthDataSource>()));
    gh.lazySingleton<_i36.CartBloc>(() => _i36.CartBloc(
          gh<_i15.GetCart>(),
          gh<_i31.AddToCart>(),
          gh<_i23.RemoveFromCart>(),
        ));
    gh.factory<_i37.CategoryDatasource>(
        () => _i37.CategoryDatasourceImpl(gh<_i16.PocketBaseService>()));
    gh.factory<_i38.CategoryRepository>(
        () => _i39.CategoryRepositoryImpl(gh<_i37.CategoryDatasource>()));
    gh.factory<_i40.CommentDatasource>(
        () => _i40.CommentDatasourceImpl(gh<_i16.PocketBaseService>()));
    gh.factory<_i41.CommentRepository>(
        () => _i42.CommentRepositoryImpl(gh<_i40.CommentDatasource>()));
    gh.factory<_i43.DeleteComment>(
        () => _i43.DeleteComment(gh<_i41.CommentRepository>()));
    gh.factory<_i44.GetFilters>(
        () => _i44.GetFilters(gh<_i25.SearchRepository>()));
    gh.factory<_i45.GetMainCategories>(
        () => _i45.GetMainCategories(gh<_i38.CategoryRepository>()));
    gh.factory<_i46.GetProduct>(
        () => _i46.GetProduct(gh<_i21.ProductRepository>()));
    gh.factory<_i47.GetProductComments>(
        () => _i47.GetProductComments(gh<_i41.CommentRepository>()));
    gh.factory<_i48.GetProductList>(
        () => _i48.GetProductList(gh<_i21.ProductRepository>()));
    gh.factory<_i49.GetProductVariants>(
        () => _i49.GetProductVariants(gh<_i19.ProductDetailRepository>()));
    gh.factory<_i50.GetWishlist>(
        () => _i50.GetWishlist(gh<_i29.WishlistRepository>()));
    gh.factory<_i51.HomeDatasource>(
        () => _i51.HomeDatasourceImpl(gh<_i16.PocketBaseService>()));
    gh.factory<_i52.HomeRepository>(
        () => _i53.HomeRepositoryImpl(gh<_i51.HomeDatasource>()));
    gh.factory<_i54.Login>(() => _i54.Login(gh<_i34.AuthRepository>()));
    gh.factory<_i55.Register>(() => _i55.Register(gh<_i34.AuthRepository>()));
    gh.factory<_i56.RemoveFromWishlist>(
        () => _i56.RemoveFromWishlist(gh<_i29.WishlistRepository>()));
    gh.factory<_i57.SearchProduct>(
        () => _i57.SearchProduct(gh<_i25.SearchRepository>()));
    gh.factory<_i58.UpdateComment>(
        () => _i58.UpdateComment(gh<_i41.CommentRepository>()));
    gh.lazySingleton<_i59.WishlistBloc>(() => _i59.WishlistBloc(
          gh<_i50.GetWishlist>(),
          gh<_i32.AddToWishlist>(),
          gh<_i56.RemoveFromWishlist>(),
        ));
    gh.factory<_i60.AddComment>(
        () => _i60.AddComment(gh<_i41.CommentRepository>()));
    gh.lazySingleton<_i61.AppBloc>(() => _i61.AppBloc(
          gh<_i11.AuthService>(),
          gh<_i59.WishlistBloc>(),
          gh<_i36.CartBloc>(),
        ));
    gh.factory<_i62.GetHomeData>(
        () => _i62.GetHomeData(gh<_i52.HomeRepository>()));
    return this;
  }
}

class _$ServiceModule extends _i63.ServiceModule {}

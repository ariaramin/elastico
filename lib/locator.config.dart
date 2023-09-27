// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:elastico/app/core/helpers/hive_helper.dart' as _i4;
import 'package:elastico/app/core/helpers/network_helper.dart' as _i8;
import 'package:elastico/app/features/category/data/data_sources/category_datasource.dart'
    as _i19;
import 'package:elastico/app/features/category/data/repositories/category_repository_impl.dart'
    as _i21;
import 'package:elastico/app/features/category/domain/repositories/category_repository.dart'
    as _i20;
import 'package:elastico/app/features/category/domain/usecases/get_categories.dart'
    as _i25;
import 'package:elastico/app/features/comment/data/data_sources/comment_datasource.dart'
    as _i22;
import 'package:elastico/app/features/comment/data/repositories/comment_repository_impl.dart'
    as _i24;
import 'package:elastico/app/features/comment/domain/repositories/comment_repository.dart'
    as _i23;
import 'package:elastico/app/features/comment/domain/usecases/get_product_comments.dart'
    as _i28;
import 'package:elastico/app/features/home/data/data_sources/home_datasource.dart'
    as _i5;
import 'package:elastico/app/features/home/data/repositories/home_repository_impl.dart'
    as _i7;
import 'package:elastico/app/features/home/domain/repositories/home_repository.dart'
    as _i6;
import 'package:elastico/app/features/home/domain/usecases/get_home_data.dart'
    as _i26;
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
    as _i27;
import 'package:elastico/app/features/product/domain/usecases/get_product_list.dart'
    as _i29;
import 'package:elastico/app/features/product/domain/usecases/get_product_variants.dart'
    as _i30;
import 'package:elastico/app/features/wishlist/data/data_sources/wishlist_datasource.dart'
    as _i15;
import 'package:elastico/app/features/wishlist/data/repositories/wishlist_repository_impl.dart'
    as _i17;
import 'package:elastico/app/features/wishlist/domain/repositories/wishlist_repository.dart'
    as _i16;
import 'package:elastico/app/features/wishlist/domain/usecases/add_item_to_wishlist.dart'
    as _i18;
import 'package:elastico/app/features/wishlist/domain/usecases/get_wishlist_items.dart'
    as _i31;
import 'package:elastico/app/features/wishlist/domain/usecases/remove_item_from_wishlist.dart'
    as _i32;
import 'package:elastico/app/features/wishlist/presentation/bloc/wishlist_bloc.dart'
    as _i33;
import 'package:elastico/locator.dart' as _i34;
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
    gh.factory<_i5.HomeDatasource>(
        () => _i5.HomeDatasourceImpl(dio: gh<_i3.Dio>()));
    gh.factory<_i6.HomeRepository>(
        () => _i7.HomeRepositoryImpl(homeDatasource: gh<_i5.HomeDatasource>()));
    gh.factory<_i8.NetworkHelper>(() => _i8.NetworkHelper());
    gh.factory<_i9.ProductDatasource>(
        () => _i9.ProductDatasourceImpl(dio: gh<_i3.Dio>()));
    gh.factory<_i10.ProductDetailDatasource>(
        () => _i10.ProductDetailDatasourceImpl(dio: gh<_i3.Dio>()));
    gh.factory<_i11.ProductDetailRepository>(() =>
        _i12.ProductDetailRepositoryImpl(
            productDetailDatasource: gh<_i10.ProductDetailDatasource>()));
    gh.factory<_i13.ProductRepository>(() => _i14.ProductRepositoryImpl(
        productDatasource: gh<_i9.ProductDatasource>()));
    gh.factory<_i15.WishlistDatasource>(
        () => _i15.WishlistDatasourceImpl(hiveHelper: gh<_i4.HiveHelper>()));
    gh.factory<_i16.WishlistRepository>(() => _i17.WishlistRepositoryImpl(
        wishlistDatasource: gh<_i15.WishlistDatasource>()));
    gh.factory<_i18.AddItemToWishlist>(() => _i18.AddItemToWishlist(
        wishlistRepository: gh<_i16.WishlistRepository>()));
    gh.factory<_i19.CategoryDatasource>(
        () => _i19.CategoryDatasourceImpl(dio: gh<_i3.Dio>()));
    gh.factory<_i20.CategoryRepository>(() => _i21.CategoryRepositoryImpl(
        categoryDatasource: gh<_i19.CategoryDatasource>()));
    gh.factory<_i22.CommentDatasource>(
        () => _i22.CommentDatasourceImpl(dio: gh<_i3.Dio>()));
    gh.factory<_i23.CommentRepository>(() => _i24.CommentRepositoryImpl(
        commentDatasource: gh<_i22.CommentDatasource>()));
    gh.factory<_i25.GetCategories>(() =>
        _i25.GetCategories(categoryRepository: gh<_i20.CategoryRepository>()));
    gh.factory<_i26.GetHomeData>(
        () => _i26.GetHomeData(homeRepository: gh<_i6.HomeRepository>()));
    gh.factory<_i27.GetProduct>(
        () => _i27.GetProduct(productRepository: gh<_i13.ProductRepository>()));
    gh.factory<_i28.GetProductComments>(() => _i28.GetProductComments(
        commentRepository: gh<_i23.CommentRepository>()));
    gh.factory<_i29.GetProductList>(() =>
        _i29.GetProductList(productRepository: gh<_i13.ProductRepository>()));
    gh.factory<_i30.GetProductVariants>(() => _i30.GetProductVariants(
        productDetailRepository: gh<_i11.ProductDetailRepository>()));
    gh.factory<_i31.GetWishlistItems>(() => _i31.GetWishlistItems(
        wishlistRepository: gh<_i16.WishlistRepository>()));
    gh.factory<_i32.RemoveItemFromWishlist>(() => _i32.RemoveItemFromWishlist(
        wishlistRepository: gh<_i16.WishlistRepository>()));
    gh.lazySingleton<_i33.WishlistBloc>(() => _i33.WishlistBloc(
          getWishlistItems: gh<_i31.GetWishlistItems>(),
          addItemToWishlist: gh<_i18.AddItemToWishlist>(),
          removeItemFromWishlist: gh<_i32.RemoveItemFromWishlist>(),
        ));
    return this;
  }
}

class _$ServiceModule extends _i34.ServiceModule {}

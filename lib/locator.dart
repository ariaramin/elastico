import 'package:dio/dio.dart';
import 'package:elastico/app/core/helpers/hive_helper.dart';
import 'package:elastico/app/core/utils/constants.dart';
import 'package:elastico/app/features/comment/data/data_sources/comment_datasource.dart';
import 'package:elastico/app/features/comment/data/repositories/comment_repository_impl.dart';
import 'package:elastico/app/features/comment/domain/repositories/comment_repository.dart';
import 'package:elastico/app/features/comment/domain/usecases/get_product_comments.dart';
import 'package:elastico/app/features/home/data/data_sources/home_datasource.dart';
import 'package:elastico/app/features/home/data/repositories/home_repository_impl.dart';
import 'package:elastico/app/features/home/domain/repositories/home_repository.dart';
import 'package:elastico/app/features/home/domain/usecases/get_home_data.dart';
import 'package:elastico/app/features/product/data/data_sources/product_datasource.dart';
import 'package:elastico/app/features/product/data/data_sources/product_detail_datasource.dart';
import 'package:elastico/app/features/wishlist/data/data_sources/wishlist_datasource.dart';
import 'package:elastico/app/features/product/data/repositories/product_detail_repository_impl.dart';
import 'package:elastico/app/features/product/data/repositories/product_repository_impl.dart';
import 'package:elastico/app/features/wishlist/data/repositories/wishlist_repository_impl.dart';
import 'package:elastico/app/features/product/domain/repositories/product_detail_repository.dart';
import 'package:elastico/app/features/product/domain/repositories/product_repository.dart';
import 'package:elastico/app/features/wishlist/domain/repositories/wishlist_repository.dart';
import 'package:elastico/app/features/product/domain/usecases/get_product.dart';
import 'package:elastico/app/features/product/domain/usecases/get_product_list.dart';
import 'package:elastico/app/features/product/domain/usecases/get_product_variants.dart';
import 'package:elastico/app/features/wishlist/domain/usecases/add_item_to_wishlist.dart';
import 'package:elastico/app/features/wishlist/domain/usecases/get_wishlist_items.dart';
import 'package:elastico/app/features/wishlist/domain/usecases/remove_item_from_wishlist.dart';
import 'package:elastico/app/features/wishlist/presentation/bloc/wishlist_bloc.dart';
import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.instance;

Future<void> initializeLocator() async {
  // dio
  locator.registerSingleton<Dio>(Dio(BaseOptions(baseUrl: Constants.baseUrl)));

  // hive helper
  locator.registerSingleton<HiveHelper>(HiveHelper());

  //datasources
  locator.registerFactory<HomeDatasource>(
      () => HomeDatasourceImpl(dio: locator.get()));

  locator.registerFactory<ProductDatasource>(
      () => ProductDatasourceImpl(dio: locator.get()));

  locator.registerFactory<ProductDetailDatasource>(
      () => ProductDetailDatasourceImpl(dio: locator.get()));

  locator.registerFactory<CommentDatasource>(
      () => CommentDatasourceImpl(dio: locator.get()));

  locator.registerFactory<WishlistDatasource>(
      () => WishlistDatasourceImpl(hiveHelper: locator.get()));

  // repositories
  locator.registerFactory<HomeRepository>(
      () => HomeRepositoryImpl(homeDatasource: locator.get()));

  locator.registerFactory<ProductRepository>(
      () => ProductRepositoryImpl(productDatasource: locator.get()));

  locator.registerFactory<ProductDetailRepository>(() =>
      ProductDetailRepositoryImpl(productDetailDatasource: locator.get()));

  locator.registerFactory<CommentRepository>(
      () => CommentRepositoryImpl(commentDatasource: locator.get()));

  locator.registerFactory<WishlistRepository>(
      () => WishlistRepositoryImpl(wishlistDatasource: locator.get()));

  // usecases
  locator.registerFactory<GetHomeData>(
      () => GetHomeData(homeRepository: locator.get()));

  locator.registerFactory<GetProductList>(
      () => GetProductList(productRepository: locator.get()));

  locator.registerFactory<GetProduct>(
      () => GetProduct(productRepository: locator.get()));

  locator.registerFactory<GetProductVariants>(
      () => GetProductVariants(productDetailRepository: locator.get()));

  locator.registerFactory<GetProductComments>(
      () => GetProductComments(commentRepository: locator.get()));

  locator.registerFactory<GetWishlistItems>(
      () => GetWishlistItems(wishlistRepository: locator.get()));

  locator.registerFactory<AddItemToWishlist>(
      () => AddItemToWishlist(wishlistRepository: locator.get()));

  locator.registerFactory<RemoveItemFromWishlist>(
      () => RemoveItemFromWishlist(wishlistRepository: locator.get()));

  // blocs
  locator.registerSingleton<WishlistBloc>(
    WishlistBloc(
      getWishlistItems: locator.get(),
      addItemToWishlist: locator.get(),
      removeItemFromWishlist: locator.get(),
    ),
  );
}

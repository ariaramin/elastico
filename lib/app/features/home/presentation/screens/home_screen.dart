import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/core/components/error_text.dart';
import 'package:elastico/app/core/components/section_title.dart';
import 'package:elastico/app/core/config/route/app_routes_name.dart';
import 'package:elastico/app/features/home/presentation/bloc/home_bloc.dart';
import 'package:elastico/app/features/home/presentation/widgets/banner_slider.dart';
import 'package:elastico/app/core/components/product_grid.dart';
import 'package:elastico/app/features/home/presentation/widgets/category_list.dart';
import 'package:elastico/app/features/home/presentation/widgets/home_appbar.dart';
import 'package:elastico/app/features/home/presentation/widgets/middle_banners.dart';
import 'package:elastico/app/features/home/presentation/widgets/special_offers_product_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<HomeBloc>();
    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async => bloc.initialRequest(),
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return state.maybeWhen(
                loaded: (homeData) => CustomScrollView(
                  slivers: [
                    const HomeAppBar(),
                    BannerSlider(banners: homeData.sliderBanners),
                    CategoryList(categories: homeData.topCategories),
                    SectionTitle(
                      title: 'special_offers'.tr(),
                      onTap: () => Navigator.pushNamed(
                        context,
                        AppRoutesName.productList,
                        arguments: {
                          'title': 'special_offers'.tr(),
                          'filter': 'popularity=\'discounted\''
                        },
                      ),
                    ),
                    SpecialOffersProductList(
                        products: homeData.discountedProducts),
                    MiddleBanners(banner: homeData.middleBanners.first),
                    SectionTitle(
                      title: 'best_sellers'.tr(),
                      onTap: () => Navigator.pushNamed(
                        context,
                        AppRoutesName.productList,
                        arguments: {
                          'title': 'best_sellers'.tr(),
                          'filter': 'popularity=\'best-seller\''
                        },
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: ProductGrid(
                        products: homeData.bestSellerProducts,
                        shrinkWrap: true,
                      ),
                    ),
                    MiddleBanners(banner: homeData.middleBanners.last),
                    SectionTitle(
                      title: 'newest'.tr(),
                      onTap: () => Navigator.pushNamed(
                        context,
                        AppRoutesName.productList,
                        arguments: {
                          'title': 'newest'.tr(),
                          'filter': 'popularity=\'newest\''
                        },
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: ProductGrid(
                        products: homeData.newestProducts,
                        shrinkWrap: true,
                      ),
                    ),
                  ],
                ),
                error: (errorMessage) => ErrorText(
                  errorMessage: errorMessage,
                  onPressed: () => bloc.initialRequest(),
                ),
                orElse: () => const Center(child: CircularProgressIndicator()),
              );
            },
          ),
        ),
      ),
    );
  }
}

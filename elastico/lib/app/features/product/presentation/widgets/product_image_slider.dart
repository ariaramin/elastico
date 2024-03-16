import 'package:carousel_slider/carousel_slider.dart';
import 'package:elastico/app/core/common/slider_cubit.dart';
import 'package:elastico/app/core/components/cached_image.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:elastico/app/features/product/domain/entities/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductImageSlider extends StatefulWidget {
  final Product product;

  const ProductImageSlider({
    super.key,
    required this.product,
  });

  @override
  State<ProductImageSlider> createState() => _ProductImageSliderState();
}

class _ProductImageSliderState extends State<ProductImageSlider> {
  late List<String> bannerList;

  @override
  void initState() {
    super.initState();
    bannerList = [];
    bannerList.add(widget.product.thumbnail);
    bannerList.addAll(widget.product.images);
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          AspectRatio(
            aspectRatio: 1.1,
            child: Container(
              width: double.infinity,
              color: const Color(0xffEAEEEF),
              child: CarouselSlider.builder(
                options: CarouselOptions(
                  aspectRatio: 1,
                  viewportFraction: 1,
                  initialPage: 0,
                  autoPlay: true,
                  onPageChanged: (index, reason) =>
                      context.read<SliderCubit>().changeSelectedIndex(index),
                ),
                itemCount: bannerList.length,
                itemBuilder: (context, index, realIndex) {
                  return CachedImage(imageUrl: bannerList[index]);
                },
              ),
            ),
          ),
          Positioned(
            bottom: 16,
            child: BlocBuilder<SliderCubit, int>(
              builder: (context, state) {
                return AnimatedSmoothIndicator(
                  count: bannerList.length,
                  activeIndex: state,
                  effect: ScrollingDotsEffect(
                    dotHeight: 8.w,
                    dotWidth: 8.w,
                    dotColor: context.theme.appColors.background,
                    activeDotColor: context.theme.appColors.primary,
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

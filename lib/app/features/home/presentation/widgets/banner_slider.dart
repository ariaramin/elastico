import 'package:carousel_slider/carousel_slider.dart';
import 'package:elastico/app/features/home/domain/entities/banner.dart'
    as entity;
import 'package:elastico/app/features/home/presentation/widgets/banner_item.dart';
import 'package:flutter/material.dart';

class BannerSlider extends StatelessWidget {
  final List<entity.Banner> banners;

  const BannerSlider({
    super.key,
    required this.banners,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(top: 18),
      sliver: SliverToBoxAdapter(
        child: CarouselSlider.builder(
          options: CarouselOptions(
            aspectRatio: 18 / 9,
            viewportFraction: 1,
            enlargeCenterPage: true,
            initialPage: 0,
            autoPlay: true,
          ),
          itemCount: banners.length,
          itemBuilder: (context, index, realIndex) {
            return BannerItem(thumbnail: banners[index].thumbnail);
          },
        ),
      ),
    );
  }
}

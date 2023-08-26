import 'package:elastico/app/features/home/domain/entities/banner.dart'
    as entity;
import 'package:elastico/app/features/home/presentation/widgets/banner_item.dart';
import 'package:flutter/material.dart';

class MiddleBanners extends StatelessWidget {
  final entity.Banner banner;

  const MiddleBanners({
    super.key,
    required this.banner,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(18, 18, 18, 0),
        child: BannerItem(thumbnail: banner.thumbnail),
      ),
    );
  }
}

import 'package:elastico/app/core/extention/num_extention.dart';
import 'package:elastico/app/features/home/domain/entities/banner.dart'
    as entity;
import 'package:elastico/app/features/home/presentation/widgets/banner_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        padding: 18.w.horizontal + 18.h.top,
        child: BannerItem(thumbnail: banner.thumbnail),
      ),
    );
  }
}

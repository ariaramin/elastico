import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BannerItem extends StatelessWidget {
  final String thumbnail;

  const BannerItem({
    super.key,
    required this.thumbnail,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Container(
        decoration: ShapeDecoration(
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(62.r),
          ),
          image: DecorationImage(
            image: CachedNetworkImageProvider(thumbnail),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

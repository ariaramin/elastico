import 'package:cached_network_image/cached_network_image.dart';
import 'package:elastico/app/core/components/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CachedImage extends StatelessWidget {
  final String imageUrl;

  const CachedImage({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      progressIndicatorBuilder: (context, url, downloadProgress) =>
          LoadingIndicator(size: 18.w),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:elastico/app/core/components/loading_indicator.dart';
import 'package:flutter/material.dart';

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
          const LoadingIndicator(size: 18),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}

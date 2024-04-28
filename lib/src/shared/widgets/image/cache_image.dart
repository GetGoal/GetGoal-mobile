import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../themes/color.dart';

class CacheImage extends StatelessWidget {
  const CacheImage({super.key, this.programImage, this.radius});

  final String? programImage;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      key: UniqueKey(),
      memCacheWidth: 128,
      memCacheHeight: 128,
      maxWidthDiskCache: 128,
      maxHeightDiskCache: 128,
      fadeInDuration: const Duration(milliseconds: 100),
      fadeOutCurve: Curves.fastLinearToSlowEaseIn,
      imageUrl: programImage!,
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          // boxShadow: AppShadow.shadow,
          color: AppColors.black,
          borderRadius: BorderRadius.all(Radius.circular(radius ?? 0)),
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.contain,
            alignment: Alignment.center,
          ),
        ),
      ),
      placeholder: (context, url) => Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        enabled: true,
        child: Container(
          width: 500,
          height: 144,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(radius ?? 0)),
            color: Colors.white,
          ),
        ),
      ),
      errorWidget: (context, url, error) =>
          Center(child: Icon(Icons.error, color: AppColors.description)),
      fit: BoxFit.cover,
    );
  }
}

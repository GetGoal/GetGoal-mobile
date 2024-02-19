import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CacheImage extends StatelessWidget {
  const CacheImage({super.key, this.programImage, this.radius});

  final String? programImage;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      key: UniqueKey(),
      fadeInDuration: const Duration(milliseconds: 100),
      fadeOutCurve: Curves.fastLinearToSlowEaseIn,
      imageUrl: programImage!,
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(radius ?? 0)),
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
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
          const Center(child: Icon(Icons.error)),
      fit: BoxFit.cover,
    );
  }
}

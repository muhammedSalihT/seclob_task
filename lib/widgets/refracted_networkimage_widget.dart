import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RefractedNetworkImageWidget extends StatelessWidget {
  const RefractedNetworkImageWidget(
      {super.key, required this.image, this.height, this.width});

  final String image;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height?.h ?? 40.h,
      width: width?.w ?? 40.h,
      child: CachedNetworkImage(
        height: height?.h ?? 40.h,
        width: width?.w ?? 40.h,
        imageUrl: image,
        fit: BoxFit.cover,
        errorWidget: (context, url, error) {
          return const Center(
            child: Icon(
              Icons.image,
              color: Color(0xff1e3167),
            ),
          );
        },
        placeholder: (
          context,
          url,
        ) =>
            const Center(
                child: CircularProgressIndicator(
          color: Color(0xff1e3167),
        )),
      ),
    );
  }
}

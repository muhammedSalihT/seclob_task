// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RefractedSvgWidgte extends StatelessWidget {
  const RefractedSvgWidgte({
    Key? key,
    required this.svgPath,
    this.svgHeight,
    this.svgWidth,
    this.color,
    this.fit,
  }) : super(key: key);

  final String svgPath;
  final double? svgHeight;
  final double? svgWidth;
  final Color? color;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      svgPath,
      color: color,
      height: svgHeight,
      width: svgWidth,
      cacheColorFilter: true,
      fit: fit ?? BoxFit.cover,
    );
  }
}

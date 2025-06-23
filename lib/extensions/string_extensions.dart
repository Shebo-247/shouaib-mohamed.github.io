import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

extension StringExtensions on String {
  /// UI Extensions for String
  SvgPicture toSvg({size, color}) {
    return SvgPicture.asset(this, width: size, height: size, color: color);
  }

  Widget toImage({double? width, double? height, Color? color, BoxFit? fit}) {
    return Image.asset(
      this,
      width: width,
      height: height,
      fit: fit ?? BoxFit.cover,
      color: color,
    );
  }
}

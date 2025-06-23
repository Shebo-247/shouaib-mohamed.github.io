import 'package:flutter/material.dart';

class Utils {
  static double logicalToPhysical(BuildContext context, double logicalPixels) {
    return logicalPixels * MediaQuery.of(context).devicePixelRatio;
  }
}

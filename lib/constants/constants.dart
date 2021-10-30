import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/constants/colors.dart';

class MyConstants {
  static final decoration = ShapeDecoration(
    color: Colors.white,
    shadows: [
      BoxShadow(
        color: MyColors.shadowColor.withOpacity(0.6),
        offset: Offset(0, -40),
        spreadRadius: -18.0,
      ),
    ],
    shape: SmoothRectangleBorder(
      borderRadius: SmoothBorderRadius(
        cornerRadius: 50,
        cornerSmoothing: 1,
      ),
    ),
  );
}

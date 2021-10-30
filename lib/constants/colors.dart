import 'package:flutter/material.dart';

class MyColors {
  static const Color backgroundColor1 = Color(0xFF77BBF6);
  static const Color backgroundColor2 = Color(0xFF5B82EB);
  static const Color backgroundColor3 = Color(0xFF5374E8);
  static const Color shadowColor = Color(0xFFbed4f4);

  static const Color text1 = Color(0xFFF2F5F8);

  static final textGradient = LinearGradient(
    colors: [
      Colors.white.withOpacity(0.9),
      Colors.white.withOpacity(0.85),
      Colors.white.withOpacity(0.45),
      Colors.white.withOpacity(0.1),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static final backgroundGradient = LinearGradient(
    colors: [
      backgroundColor1,
      backgroundColor2,
      backgroundColor3,
    ],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    stops: [0.0, 0.55, 0.8],
    tileMode: TileMode.repeated,
  );
}

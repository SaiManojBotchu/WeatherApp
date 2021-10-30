import 'package:flutter/material.dart';

class WeatherImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: Image.asset(
        'assets/images/17.png',
        width: 48.0,
      ),
      radius: 43.0,
      backgroundColor: Color(0xFFEDF3F7),
    );
  }
}

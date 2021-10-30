import 'package:flutter/material.dart';

class WeatherImageWidget extends StatelessWidget {
  final double size;
  const WeatherImageWidget({required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      child: Image.asset(
        'assets/images/17.png',
      ),
    );
  }
}

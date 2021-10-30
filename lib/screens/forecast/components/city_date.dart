import 'package:flutter/material.dart';
import 'package:weather_app/models/forecast.dart';

class CityDate extends StatelessWidget {
  final int index;
  const CityDate({required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          Forecast.getDay(),
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 15.0,
          ),
        ),
        Text(
          Forecast.getDateMonth(),
          style: TextStyle(
            color: Colors.black.withOpacity(0.6),
            fontWeight: FontWeight.w500,
            fontSize: 13.0,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:weather_app/models/forecast.dart';

class CityTemp extends StatelessWidget {
  final int index;
  const CityTemp({required this.index});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          Forecast.tempList[index].toString(),
          style: TextStyle(
            color: Color(0xFF01185E),
            fontWeight: FontWeight.w800,
            fontSize: 30.0,
            letterSpacing: 0.01,
          ),
        ),
        Transform.translate(
          offset: Offset(0, -8),
          child: Text(
            '\u00B0',
            style: TextStyle(
              fontSize: 25.0,
              color: Color(0xFF01185E),
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ],
    );
  }
}

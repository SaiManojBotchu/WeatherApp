import 'package:flutter/material.dart';
import 'package:weather_app/models/weather.dart';

class CityDataWidget extends StatelessWidget {
  final String desc;
  const CityDataWidget({required this.desc});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 0.0),
        _buildCityName(),
        SizedBox(height: 8.0),
        _buildDesc(),
      ],
    );
  }

  Text _buildDesc() {
    return Text(
      desc,
      style: TextStyle(
        color: Colors.white.withOpacity(0.8),
        fontSize: 18.0,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Text _buildCityName() {
    return Text(
      Weather.cityName,
      style: TextStyle(
        fontSize: 38.0,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}

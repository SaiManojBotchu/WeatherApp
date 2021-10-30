import 'package:flutter/material.dart';
import 'package:weather_app/constants/constants.dart';
import 'package:weather_app/screens/forecast/components/forecast_weather.dart';

class ForecastContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 0.0),
      padding: EdgeInsets.fromLTRB(35.0, 25.0, 10.0, 25.0),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.50,
      decoration: MyConstants.decoration,
      child: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildBar(),
              SizedBox(height: 50.0),
              _buildFutureText(),
              ForecastWeather(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFutureText() {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        'Future weather',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w700,
          fontSize: 26.0,
        ),
      ),
    );
  }

  Widget _buildBar() {
    return Center(
      child: Container(
        width: 70.0,
        height: 5.0,
        decoration: BoxDecoration(
          color: Color(0xFF6BA4E7),
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
    );
  }
}

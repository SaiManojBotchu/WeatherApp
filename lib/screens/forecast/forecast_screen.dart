import 'package:flutter/material.dart';
import 'package:weather_app/constants/colors.dart';
import 'package:weather_app/models/forecast.dart';
import 'package:weather_app/screens/forecast/components/forecast_container.dart';
import 'package:weather_app/widgets/city_data.dart';
import 'package:weather_app/widgets/city_temp.dart';
import 'package:weather_app/widgets/weather_image.dart';

class ForecastScreen extends StatefulWidget {
  @override
  _ForecastScreenState createState() => _ForecastScreenState();
}

class _ForecastScreenState extends State<ForecastScreen> {
  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    await Forecast.getForecastWeather();
    setState(() => Forecast.updateForecastData());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: MyColors.backgroundGradient),
        child: SafeArea(
          child: Column(
            children: [
              CityDataWidget(desc: 'Today\'s Weather'),
              SizedBox(height: 15.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  WeatherImageWidget(size: 120.0),
                  CityTempWidget(size1: 100.0, size2: 80.0, offset: 25),
                ],
              ),
              ForecastContainer(),
            ],
          ),
        ),
      ),
    );
  }
}

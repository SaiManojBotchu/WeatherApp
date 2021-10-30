import 'package:flutter/material.dart';
import 'package:weather_app/models/forecast.dart';
import 'package:weather_app/screens/forecast/components/city_date.dart';
import 'package:weather_app/screens/forecast/components/city_temp.dart';
import 'package:weather_app/screens/forecast/components/weather_image.dart';

class ForecastWeather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: Forecast.tempList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(top: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              WeatherImage(),
              Container(
                width: 200.0,
                height: 86.0,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFFEDF3F7),
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(90.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CityTemp(index: index),
                    CityDate(index: index),
                  ],
                ),
              ),
              SizedBox(width: 5.0),
            ],
          ),
        );
      },
    );
  }
}

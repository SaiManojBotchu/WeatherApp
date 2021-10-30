import 'package:flutter/material.dart';
import 'package:weather_app/constants/colors.dart';
import 'package:weather_app/models/weather.dart';
import 'package:weather_app/widgets/city_data.dart';
import 'package:weather_app/widgets/city_temp.dart';
import 'package:weather_app/widgets/weather_image.dart';

class ExploreScreen extends StatefulWidget {
  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    await Weather.getCityWeather();
    setState(() => Weather.updateWeatherData());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: MyColors.backgroundGradient),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CityDataWidget(desc: Weather.desc),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  CityTempWidget(size1: 175.0, size2: 140.0, offset: 45),
                  Positioned(
                    bottom: -125,
                    right: 90,
                    child: WeatherImageWidget(size: 220.0),
                  ),
                  Positioned(
                    bottom: -120,
                    left: 40,
                    child: Column(
                      children: [
                        Text(
                          'Wind',
                          style: TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.white.withOpacity(0.7),
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          '${Weather.windSpeed} km/h',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: -120,
                    right: 40,
                    child: Column(
                      children: [
                        Text(
                          'Humidity',
                          style: TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.white.withOpacity(0.7),
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          '${Weather.humidity}%',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 120.0),
              // Container(
              //   margin: const EdgeInsets.symmetric(horizontal: 20.0),
              //   width: double.infinity,
              //   height: 120.0,
              //   color: Colors.white,
              // ),
              Column(
                children: [
                  Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20.0),
                      height: 70.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'assets/images/Home.png',
                            width: 25.0,
                            color: Colors.white.withOpacity(0.9),
                          ),
                          Image.asset(
                            'assets/images/Search.png',
                            width: 25.0,
                            color: Colors.white.withOpacity(0.8),
                          ),
                          Text(
                            'Mon 29, Sept',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Image.asset(
                            'assets/images/Discovery.png',
                            width: 25.0,
                            color: Colors.white.withOpacity(0.9),
                          ),
                          Image.asset(
                            'assets/images/Search.png',
                            width: 25.0,
                            color: Colors.white.withOpacity(0.9),
                          ),
                        ],
                      )),
                  SizedBox(height: 15.0),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    width: double.infinity,
                    height: 90.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/images/Home.png',
                          width: 30.0,
                          color: Colors.black.withOpacity(0.55),
                        ),
                        Image.asset(
                          'assets/images/Search.png',
                          width: 30.0,
                          color: Colors.black.withOpacity(0.55),
                        ),
                        Image.asset(
                          'assets/images/Discovery.png',
                          width: 30.0,
                          color: Colors.black.withOpacity(0.55),
                        ),
                        Image.asset(
                          'assets/images/Search.png',
                          width: 30.0,
                          color: Colors.black.withOpacity(0.55),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:weather_app/screens/explore/explore_screen.dart';
// import 'screens/home/home_screen.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: ExploreScreen(),
    );
  }
}

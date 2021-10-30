import 'package:weather_app/utilities/network.dart';

const weatherUrl = 'https://api.openweathermap.org/data/2.5/weather';
const apiKey = 'ef96eb8e7e48184b678362e162d33db7';

class Weather {
  static var weatherData;

  static int temperature = 23;
  static String cityName = 'London';
  static int humidity = 0;
  static int windSpeed = 0;
  static String desc = '';

  static Future<dynamic> getCityWeather() async {
    var url = '$weatherUrl?q=$cityName&appid=$apiKey&units=metric';
    Network network = Network(url);
    weatherData = await network.getJsonData();
  }

  static updateWeatherData() {
    if (weatherData == null) {
      return;
    }
    double temp = weatherData['main']['temp'];
    temperature = temp.toInt();
    double speed = weatherData['wind']['speed'];
    windSpeed = speed.toInt();
    cityName = weatherData['name'];
    desc = weatherData['weather'][0]['description'];
    humidity = weatherData['main']['humidity'];
  }
}

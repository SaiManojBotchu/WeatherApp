import 'package:intl/intl.dart';
import 'package:weather_app/utilities/network.dart';

const apiKey = 'ef96eb8e7e48184b678362e162d33db7';
const forecastUrl = 'https://api.openweathermap.org/data/2.5/forecast';

String cityName = 'London';

class Forecast {
  static var forecastData;
  static var forecastList;

  static List tempList = [];
  static List dateList = [];

  static Future<dynamic> getForecastWeather() async {
    var url = '$forecastUrl?q=$cityName&appid=$apiKey&units=metric&cnt=8';
    Network network = Network(url);
    forecastData = await network.getJsonData();
    // print(forecastData);
  }

  static updateForecastData() {
    if (forecastData == null) {
      return;
    }
    forecastList = forecastData['list'];
    for (int i = 0; i < 8; i++) {
      var temp = forecastList[i]["main"]["temp"];
      temp = temp.toInt();
      tempList.add(temp);
    }
    for (int i = 0; i < 8; i++) {
      dateList.add(forecastList[i]['dt_txt']);
      print('${dateList[i]} : ${tempList[i]}');
    }
  }

  static String getDate() {
    var date = DateTime.now();
    String result = DateFormat('EEEE').format(date) + " " + date.day.toString() + "," + month[date.month.toString()].toString();
    return result;
  }

  static String getDay() {
    var date = DateTime.now();
    print(date);
    String result = DateFormat('EEEE').format(date);
    return result;
  }

  static String getDateMonth() {
    var date = DateTime.now();
    String result = date.day.toString() + " " + month[date.month.toString()].toString();
    return result;
  }

  static Map<String, String> month = {
    "1": "January",
    "2": "February",
    "3": "March",
    "4": "April",
    "5": "May",
    "6": "June",
    "7": "July",
    "8": "August",
    "9": "September",
    "10": "October",
    "11": "November",
    "12": "December"
  };
}

import 'dart:convert';
import 'package:http/http.dart' as http;

class Network {
  final String url;
  Network(this.url);

  Future getJsonData() async {
    Uri weatherApi = Uri.parse(url);
    http.Response response = await http.get(weatherApi);
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      print(response.statusCode);
    }
  }
}

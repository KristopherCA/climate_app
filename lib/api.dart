import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'variables.dart';



Future<Map> getWeather(String apiKey, String city) async {
  var apiURL =
      "https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey&units=imperial";

  http.Response response = await http.get(apiURL);

  return json.decode(response.body);
}

Future<Map> weatherDetails() async {
  var apiURL =
      "https://api.openweathermap.org/data/2.5/weather?q=$searchText&appid=$apiKey&units=imperial";

  http.Response response = await http.get(apiURL);

  return json.decode(response.body);
}



// import 'dart:html';


// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:home_automation_app/Model/weather_model.dart';
import 'package:http/http.dart' as http;
// import 'package:weather_app_tutmodel/weather_model.dart';
// import 'package:weather_app/Model/weather_model.dart';

// import '../Model/weather_model.dart';

class WeatherApiClient{
  Future<Weather>? getCurrentWeather(String? location) async{
var endpoint=Uri.parse("https://api.openweathermap.org/data/2.5/weather?q=$location&appid=2aeb2ae7b5523b8ec68c803dfe74fe29&units=imperial");
var response=await http.get(endpoint);
var body=jsonDecode(response.body);
print(Weather.fromJson(body).cityName);
return Weather.fromJson(body);
  }
}


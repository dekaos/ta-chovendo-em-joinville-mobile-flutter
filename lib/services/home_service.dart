import 'dart:core';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../helpers/handle_exception.dart';
import '../helpers/weather_description.dart';

class HomeService {

  Future<dynamic> _getForecast (int cityId) async {
    String urlForecast = 'http://api.openweathermap.org/data/2.5/forecast?id=$cityId&units=metric&type=accurate&lang=pt&APPID=50cee3eb274c3567972054e2c538a34b';
    final response = await http.get(urlForecast);
    final foreCast = json.decode(response.body);

    // if an error occurred we throw here
    checkBadStatusCode(statusCode: response.statusCode, data: foreCast);

    return foreCast;
  }

  Future<dynamic> getWeather (locationName) async {
    String urlWeather = 'https://api.openweathermap.org/data/2.5/weather?q=$locationName&type=like&units=metric&lang=pt&APPID=50cee3eb274c3567972054e2c538a34b';
    DateTime sunrise;
    DateTime sunset;

    final response = await http.get(urlWeather);
    final weather = json.decode(response.body);

    // if an error occurred we throw here
    checkBadStatusCode(statusCode: response.statusCode, data: weather);

    // The API has some inconsistency in how an integer is exposed,
    // in some cases the integer come as "String". To guarantee data consistency
    // we convert the value to string and try to convert it in an integer.
    int cityId = int.tryParse(weather['id'].toString());

    final foreCast = await _getForecast(cityId);
    weather['forecast_data'] = foreCast['list'];

    sunrise = DateTime.fromMicrosecondsSinceEpoch(weather['sys']['sunrise'] * 1000);
    sunset = DateTime.fromMicrosecondsSinceEpoch(weather['sys']['sunset'] * 1000);

    weather['temp'] = weather['main']['temp'];
    weather['max'] = weather['main']['temp_max'];
    weather['min'] = weather['main']['temp_min'];
    weather['pressure'] = weather['main']['pressure'];
    weather['wind_speed'] = weather['wind']['speed'];
    weather['humidity'] = weather['main']['humidity'];
    weather['sunrise'] = '${sunrise.hour.toString().padLeft(2, '0')}:${sunrise.minute.toString().padLeft(2, '0')}';
    weather['sunset'] = '${sunset.hour.toString().padLeft(2, '0')}:${sunset.minute.toString().padLeft(2, '0')}';
    weather['description'] = weatherDescription(int.tryParse(weather['weather'][0]['id'].toString()));

    return weather;
  }
}
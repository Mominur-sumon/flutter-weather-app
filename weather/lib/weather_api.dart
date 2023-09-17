import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherApi {
  final String apiKey = 'YOUR_API_KEY'; // Replace with your OpenWeatherMap API key

  Future<Map<String, dynamic>> getWeather(String city) async {
    final response = await http.get(
        'https://api.openweathermap.org/data/3.0/onecall?lat={lat}&lon={lon}&exclude={part}&appid={5d6fd807cd09e705ed3bac1e4a2a1121});

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}

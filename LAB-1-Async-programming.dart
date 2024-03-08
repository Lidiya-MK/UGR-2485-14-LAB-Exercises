import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchWeatherData() async {
  try {

    String apiKey = 'b1b15e88fa797225412429c1c50c122a1">api.openweathermap.org/data/2.5/forecast?id&appid=3ac79e32091412d26b67e760115c5610';
    String city = 'New York'; 

   
    final response = await http.get(
      Uri.parse('b1b15e88fa797225412429c1c50c122a1">api.openweathermap.org/data/2.5/forecast?id&appid=3ac79e32091412d26b67e760115c5610'),
    );

  
    if (response.statusCode == 200) {
      Map<String, dynamic> data = json.decode(response.body);


      double temperature = data['main']['temp'] - 273.15; 
      String conditions = data['weather'][0]['description'];

      print('Current Temperature: ${temperature.toStringAsFixed(2)}°C');
      print('Weather Conditions: $conditions');
    } else {
      print('Failed to fetch weather data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}

void main() async {
  print('Fetching weather data...');

  await fetchWeatherData();
}





import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/modals/weather_modal.dart';

class ApiHelper {
  ApiHelper._();

  static final ApiHelper apiHelper = ApiHelper._();

  weather({String query = "Surat"}) async {
    String api =
        "https://api.openweathermap.org/data/2.5/weather?q=$query&appid=668854e757a19fed36be61d7b7fb1b24";

    http.Response response = await http.get(
      Uri.parse(api),
    );

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);

      Weather weather = Weather.fromMap(data: data);

      return weather;
    }
  }
}

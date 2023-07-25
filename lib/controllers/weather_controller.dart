import 'package:flutter/cupertino.dart';
import 'package:weather_app/controllers/helpers/api_helper.dart';
import 'package:weather_app/modals/weather_modal.dart';

class WeatherController extends ChangeNotifier {
  Weather? weather;

  WeatherController() {
    search();
  }

  search({String val = "Surat"}) async {
    weather = await ApiHelper.apiHelper.weather(query: val);
    notifyListeners();
    return 0;
  }
}

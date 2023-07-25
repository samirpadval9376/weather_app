class Weather {
  final String main;
  final String name;
  final String country;
  final String description;
  final String icon;
  final String base;
  final int humidity;
  final int pressure;
  final int deg;
  final int all;
  final int sunrise;
  final int sunset;
  final double speed;
  final double temp;
  final double temp_min;
  final double temp_max;
  final double feels_like;

  Weather({
    required this.name,
    required this.main,
    required this.country,
    required this.description,
    required this.icon,
    required this.base,
    required this.humidity,
    required this.pressure,
    required this.deg,
    required this.all,
    required this.sunrise,
    required this.sunset,
    required this.speed,
    required this.temp,
    required this.feels_like,
    required this.temp_min,
    required this.temp_max,
  });

  factory Weather.fromMap({required Map data}) {
    return Weather(
      name: data['name'],
      main: data['weather'][0]['main'],
      country: data['sys']['country'],
      description: data['weather'][0]['description'],
      icon: data['weather'][0]['icon'],
      base: data['base'],
      humidity: data['main']['humidity'],
      pressure: data['main']['pressure'],
      deg: data['wind']['deg'],
      all: data['clouds']['all'],
      sunrise: data['sys']['sunrise'],
      sunset: data['sys']['sunset'],
      speed: data['wind']['speed'],
      temp: data['main']['temp'],
      feels_like: data['main']['feels_like'],
      temp_min: data['main']['temp_min'],
      temp_max: data['main']['temp_max'],
    );
  }
}

import 'package:json_annotation/json_annotation.dart';
part 'forecast_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class ForecastResponse{
  Coords coords;
  Weather weather;
  String base;
  Main main;
  double visibility;
  Wind wind;
  Clouds clouds;
  double dt;
  Sys sys;
  int timezone;
  int id;
  String name;
  int cod;

  ForecastResponse({required this.coords, required this.weather,
    required this.base, required this.main, required this.visibility, required this.wind,
    required this.clouds, required this.dt, required this.sys, required this.timezone,
    required this.id, required this.name, required this.cod});

  factory ForecastResponse.fromJson(Map<String, dynamic> json) => _$ForecastResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ForecastResponseToJson(this);

}

@JsonSerializable(genericArgumentFactories: true)
class Coords{
  Coords(this.longitude, this.latitude);
  double longitude;
  double latitude;

  factory Coords.fromJson(Map<String, dynamic> json) => _$CoordsFromJson(json);
  Map<String, dynamic> toJson() => _$CoordsToJson(this);
}

@JsonSerializable(genericArgumentFactories: true)
class Weather{
  Weather(this.id, this.main, this.description, this.icon);

  int id;
  String main;
  String description;
  String icon;

  factory Weather.fromJson(Map<String, dynamic> json) => _$WeatherFromJson(json);
  Map<String, dynamic> toJson() => _$WeatherToJson(this);
}

@JsonSerializable(genericArgumentFactories: true)
class Main{
  Main(this.temp, this.feelsLike,
      this.tempMin, this.tempMax,
      this.pressure, this.humidity,
      this.seaLevel, this.groundLevel);

  double temp;
  double feelsLike;
  double tempMin;
  double tempMax;
  double pressure;
  double humidity;
  double seaLevel;
  double groundLevel;

  factory Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);
  Map<String, dynamic> toJson() => _$MainToJson(this);
}

@JsonSerializable(genericArgumentFactories: true)
class Wind{
  Wind(this.speed, this.deg, this.gust);

  double speed;
  double deg;
  double gust;

  factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);
  Map<String, dynamic> toJson() => _$WindToJson(this);
}

@JsonSerializable(genericArgumentFactories: true)
class Clouds{
  Clouds(this.all);
  int all;

  factory Clouds.fromJson(Map<String, dynamic> json) => _$CloudsFromJson(json);
  Map<String, dynamic> toJson() => _$CloudsToJson(this);
}

@JsonSerializable(genericArgumentFactories: true)
class Sys{
  Sys(this.type, this.id, this.country, this.sunrise, this.sunset);

  int type;
  int id;
  String country;
  String sunrise;
  String sunset;

  factory Sys.fromJson(Map<String, dynamic> json) => _$SysFromJson(json);
  Map<String, dynamic> toJson() => _$SysToJson(this);
}

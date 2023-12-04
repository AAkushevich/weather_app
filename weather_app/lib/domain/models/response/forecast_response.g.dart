// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForecastResponse _$ForecastResponseFromJson(Map<String, dynamic> json) =>
    ForecastResponse(
      coords: Coords.fromJson(json['coords'] as Map<String, dynamic>),
      weather: Weather.fromJson(json['weather'] as Map<String, dynamic>),
      base: json['base'] as String,
      main: Main.fromJson(json['main'] as Map<String, dynamic>),
      visibility: (json['visibility'] as num).toDouble(),
      wind: Wind.fromJson(json['wind'] as Map<String, dynamic>),
      clouds: Clouds.fromJson(json['clouds'] as Map<String, dynamic>),
      dt: (json['dt'] as num).toDouble(),
      sys: Sys.fromJson(json['sys'] as Map<String, dynamic>),
      timezone: json['timezone'] as int,
      id: json['id'] as int,
      name: json['name'] as String,
      cod: json['cod'] as int,
    );

Map<String, dynamic> _$ForecastResponseToJson(ForecastResponse instance) =>
    <String, dynamic>{
      'coords': instance.coords,
      'weather': instance.weather,
      'base': instance.base,
      'main': instance.main,
      'visibility': instance.visibility,
      'wind': instance.wind,
      'clouds': instance.clouds,
      'dt': instance.dt,
      'sys': instance.sys,
      'timezone': instance.timezone,
      'id': instance.id,
      'name': instance.name,
      'cod': instance.cod,
    };

Coords _$CoordsFromJson(Map<String, dynamic> json) => Coords(
      (json['longitude'] as num).toDouble(),
      (json['latitude'] as num).toDouble(),
    );

Map<String, dynamic> _$CoordsToJson(Coords instance) => <String, dynamic>{
      'longitude': instance.longitude,
      'latitude': instance.latitude,
    };

Weather _$WeatherFromJson(Map<String, dynamic> json) => Weather(
      json['id'] as int,
      json['main'] as String,
      json['description'] as String,
      json['icon'] as String,
    );

Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };

Main _$MainFromJson(Map<String, dynamic> json) => Main(
      (json['temp'] as num).toDouble(),
      (json['feelsLike'] as num).toDouble(),
      (json['tempMin'] as num).toDouble(),
      (json['tempMax'] as num).toDouble(),
      (json['pressure'] as num).toDouble(),
      (json['humidity'] as num).toDouble(),
      (json['seaLevel'] as num).toDouble(),
      (json['groundLevel'] as num).toDouble(),
    );

Map<String, dynamic> _$MainToJson(Main instance) => <String, dynamic>{
      'temp': instance.temp,
      'feelsLike': instance.feelsLike,
      'tempMin': instance.tempMin,
      'tempMax': instance.tempMax,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'seaLevel': instance.seaLevel,
      'groundLevel': instance.groundLevel,
    };

Wind _$WindFromJson(Map<String, dynamic> json) => Wind(
      (json['speed'] as num).toDouble(),
      (json['deg'] as num).toDouble(),
      (json['gust'] as num).toDouble(),
    );

Map<String, dynamic> _$WindToJson(Wind instance) => <String, dynamic>{
      'speed': instance.speed,
      'deg': instance.deg,
      'gust': instance.gust,
    };

Clouds _$CloudsFromJson(Map<String, dynamic> json) => Clouds(
      json['all'] as int,
    );

Map<String, dynamic> _$CloudsToJson(Clouds instance) => <String, dynamic>{
      'all': instance.all,
    };

Sys _$SysFromJson(Map<String, dynamic> json) => Sys(
      json['type'] as int,
      json['id'] as int,
      json['country'] as String,
      json['sunrise'] as String,
      json['sunset'] as String,
    );

Map<String, dynamic> _$SysToJson(Sys instance) => <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'country': instance.country,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
    };

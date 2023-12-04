import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:weather_app/app.dart';
import 'package:weather_app/data/datasource/remote/weather_api.dart';
import 'package:weather_app/data/repository/api_repository.dart';

final logger = Logger();

void main() {
  final dio = Dio(); // Provide a dio instance
  dio.options.headers['Demo-Header'] = 'demo header'; // config your dio headers globally
  final client = WeatherApiService(dio);

  // client.getTasks().then((it) => logger.i(it));
  runApp(App(
    apiRepository: ApiRepository(client),
  ));

}
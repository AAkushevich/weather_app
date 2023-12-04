import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:weather_app/domain/models/response/forecast_response.dart';
import 'package:weather_app/utils/constants/strings.dart';
part 'weather_api.g.dart';

@RestApi(baseUrl: baseUrl, parser: Parser.MapSerializable)
abstract class WeatherApiService {
  factory WeatherApiService(Dio dio, {String baseUrl}) = _WeatherApiService;

  @GET('data/2.5/weather')
  Future<HttpResponse<ForecastResponse>> getWeatherForecast({
    @Query("lat") double? latitude,
    @Query("lon") double? longitude,
    @Query("appid") String? apiKey
  });
}

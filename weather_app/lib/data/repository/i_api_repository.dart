import 'package:weather_app/domain/models/request/forecast_request.dart';
import 'package:weather_app/domain/models/response/forecast_response.dart';
import 'package:weather_app/utils/resources/data_state.dart';

abstract class IApiRepository{
  Future<DataState<ForecastResponse>> getWeatherForecast({
    required ForecastRequest request,
  });
}
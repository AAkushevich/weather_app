import 'package:weather_app/data/datasource/remote/weather_api.dart';
import 'package:weather_app/data/repository/base/base_api_repository.dart';
import 'package:weather_app/data/repository/i_api_repository.dart';
import 'package:weather_app/domain/models/request/forecast_request.dart';
import 'package:weather_app/domain/models/response/forecast_response.dart';
import 'package:weather_app/utils/resources/data_state.dart';

class ApiRepository extends BaseApiRepository implements IApiRepository {
  final WeatherApiService _weatherApiService;

  ApiRepository(this._weatherApiService);

  @override
  Future<DataState<ForecastResponse>> getWeatherForecast({
    required ForecastRequest request,
  }) {
    return getStateOf<ForecastResponse>(
      request: () => _weatherApiService.getWeatherForecast(
          // latitude: request.latitude,
          // longitude: request.longitude,
          latitude: 44.34, longitude: 10.99
      ),
    );
  }
}

import 'package:weather_app/utils/constants/strings.dart';

class ForecastRequest {
  final double latitude;
  final double longitude;
  final String apiKey;

  ForecastRequest({
    required this.latitude,
    required this.longitude,
    this.apiKey = defaultApiKey
  });
}
import 'package:flutter/foundation.dart';
import 'package:test_app/data/models/forecast_model.dart';

abstract class IWeatherLocalDataSource {
  Future<void> cacheForecast({@required ForecastModel forecastModel});
  Future<ForecastModel> getForecast();
}

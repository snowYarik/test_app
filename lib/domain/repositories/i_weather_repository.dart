import 'package:flutter/widgets.dart';
import 'package:test_app/domain/entities/forecast_entity.dart';

abstract class IWeatherRepository {
  Future<ForecastEntity> getForecast(
      {@required double latitude, @required double longitude, String exclude});
}

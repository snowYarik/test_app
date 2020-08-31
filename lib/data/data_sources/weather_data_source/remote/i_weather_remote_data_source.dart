import 'package:flutter/widgets.dart';
import 'package:test_app/data/models/models.dart';

abstract class IWeatherRemoteDataSource {
  Future<ForecastModel> getForecast(
      {@required double latitude, @required double longitude, String exclude});
}

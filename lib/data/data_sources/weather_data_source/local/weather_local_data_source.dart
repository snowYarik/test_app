import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:test_app/data/data_sources/weather_data_source/local/i_weather_local_data_source.dart';
import 'package:test_app/data/models/forecast_model.dart';
import 'package:hive/hive.dart';

@Injectable(as: IWeatherLocalDataSource)
class WeatherLocalDataSource extends IWeatherLocalDataSource {
  final _forecastBox = 'forecast_box';
  final _forecastKey = 'forecast';

  @override
  Future<ForecastModel> getForecast() async {
    final forecastBox = await Hive.openBox(_forecastBox);
    return forecastBox.get(_forecastKey);
  }

  @override
  Future<void> cacheForecast({@required ForecastModel forecastModel}) async {
    final forecastBox = await Hive.openBox(_forecastBox);
    return forecastBox.put(_forecastKey, forecastModel);
  }
}

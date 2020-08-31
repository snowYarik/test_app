import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:test_app/data/data_sources/weather_data_source/local/i_weather_local_data_source.dart';
import 'package:test_app/data/data_sources/weather_data_source/remote/i_weather_remote_data_source.dart';
import 'package:test_app/domain/entities/forecast_entity.dart';
import 'package:test_app/domain/repositories/i_weather_repository.dart';

@Injectable(as: IWeatherRepository)
class WeatherRepository extends IWeatherRepository {
  WeatherRepository({
    @required IWeatherRemoteDataSource weatherRemoteDataSource,
    @required IWeatherLocalDataSource weatherLocalDataSource,
  })  : _weatherRemoteDataSource = weatherRemoteDataSource,
        _weatherLocalDataSource = weatherLocalDataSource;

  final IWeatherRemoteDataSource _weatherRemoteDataSource;
  final IWeatherLocalDataSource _weatherLocalDataSource;

  @override
  Future<ForecastEntity> getForecastAndCache(
      {@required double latitude,
      @required double longitude,
      String exclude}) async {
    final forecast = await _weatherRemoteDataSource.getForecast(
        latitude: latitude, longitude: longitude, exclude: exclude);
    // ignore: unawaited_futures
    _weatherLocalDataSource.cacheForecast(forecastModel: forecast);
    return ForecastEntity.fromForecastModel(forecastModel: forecast);
  }
}

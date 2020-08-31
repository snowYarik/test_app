import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:test_app/data/data_sources/weather_data_source/remote/i_weather_remote_data_source.dart';
import 'package:test_app/domain/entities/forecast_entity.dart';
import 'package:test_app/domain/repositories/i_weather_repository.dart';

@Injectable(as: IWeatherRepository)
class WeatherRepository extends IWeatherRepository {
  WeatherRepository({
    @required IWeatherRemoteDataSource weatherRemoteDataSource,
  }) : _weatherRemoteDataSource = weatherRemoteDataSource;

  final IWeatherRemoteDataSource _weatherRemoteDataSource;

  @override
  Future<ForecastEntity> getForecast(
      {@required double latitude,
      @required double longitude,
      String exclude}) async {
    final forecast = await _weatherRemoteDataSource.getForecast(
        latitude: latitude, longitude: longitude, exclude: exclude);

        return ForecastEntity.
  }
}

import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:test_app/data/data_sources/weather_data_source/remote/i_weather_remote_data_source.dart';
import 'package:test_app/data/models/forecast.dart';
import 'package:test_app/domain/repositories/i_weather_repository.dart';

@Injectable(as: IWeatherRepository)
class WeatherRepository extends IWeatherRepository {
  WeatherRepository({
    @required IWeatherRemoteDataSource weatherRemoteDataSource,
  }) : _weatherRemoteDataSource = weatherRemoteDataSource;

  final IWeatherRemoteDataSource _weatherRemoteDataSource;

  @override
  Future<Forecast> getForecast(
      {@required double latitude, @required double longitude, String exclude}) {
    return _weatherRemoteDataSource.getForecast(
        latitude: latitude, longitude: longitude, exclude: exclude);
  }
}

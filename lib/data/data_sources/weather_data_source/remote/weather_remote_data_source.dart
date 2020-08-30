import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:test_app/data/data_sources/weather_data_source/remote/i_weather_remote_data_source.dart';
import 'package:test_app/data/models/forecast.dart';
import 'package:test_app/domain/repositories/i_weather_repository.dart';

@Injectable(as: IWeatherRemoteDataSource)
class WeatherRemoteDataSource extends IWeatherRemoteDataSource {
  WeatherRemoteDataSource({
    @required IWeatherRepository weatherRepository,
  }) : _weatherRepository = weatherRepository;

  final IWeatherRepository _weatherRepository;
  final _apiKey = '1b86e94e48be5ada7b1e027fc949aee8';

  @override
  Future<Forecast> getForecast(
      {@required double latitude, @required double longitude, String exclude}) {
    return _weatherRepository.getForecast(
        latitude: latitude, longitude: longitude, exclude: exclude);
  }
}

import 'package:dio_flutter_transformer/dio_flutter_transformer.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:test_app/data/data_sources/weather_data_source/remote/i_weather_remote_data_source.dart';
import 'package:test_app/data/models/forecast_model.dart';
import 'package:test_app/data/rest_clients/weather_rest_client/i_weather_rest_client.dart';
import 'package:dio/dio.dart';

@Injectable(as: IWeatherRemoteDataSource)
class WeatherRemoteDataSource extends IWeatherRemoteDataSource {
  WeatherRemoteDataSource()
      : _restClient = IWeatherRestClient(() {
          return Dio(
            BaseOptions(
              contentType: Headers.formUrlEncodedContentType,
              connectTimeout: 60000,
            ),
          )..transformer = FlutterTransformer();
        }());

  final IWeatherRestClient _restClient;
  final _apiKey = '1b86e94e48be5ada7b1e027fc949aee8';

  @override
  Future<ForecastModel> getForecast(
      {@required double latitude, @required double longitude, String exclude}) {
    return _restClient.getForecast(
        latitude: latitude,
        longutude: longitude,
        apiKey: _apiKey,
        exclude: exclude);
  }
}

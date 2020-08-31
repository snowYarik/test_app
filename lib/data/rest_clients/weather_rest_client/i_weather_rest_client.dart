import 'package:flutter/foundation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:test_app/data/models/models.dart';
import 'package:dio/dio.dart';
part 'i_weather_rest_client.g.dart';

@RestApi(baseUrl: 'https://api.openweathermap.org/data/2.5/')
abstract class IWeatherRestClient {
  factory IWeatherRestClient(
    Dio dio, {
    String baseUrl,
  }) = _IWeatherRestClient;

  @GET('onecall')
  Future<ForecastModel> getForecast(
      {@Query('lat') @required double latitude,
      @Query('lon') @required double longutude,
      @Query('exclude') String exclude,
      @Query('units') String units = 'metric',
      @Query('appid') @required String apiKey});
}

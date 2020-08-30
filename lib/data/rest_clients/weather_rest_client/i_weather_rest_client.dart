import 'package:flutter/foundation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:test_app/data/models/models.dart';
part 'i_weather_rest_client.g.dart';

@RestApi(baseUrl: 'api.openweathermap.org/data/2.5/')
abstract class IWeatherRestClient {
  @GET('onecall')
  Future<Forecast> getForecast(
      {@Query('lat') @required double latitude,
      @Query('lon') @required double longutude,
      @Query('exclude') String exclude,
      @Query('appid') String apiKey});
}

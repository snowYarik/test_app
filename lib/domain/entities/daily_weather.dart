import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:test_app/domain/entities/temperature.dart';
import 'package:test_app/domain/entities/weather.dart';
import 'package:test_app/domain/entities/weather_options.dart';

class DailyWeather extends Equatable {
  const DailyWeather({
    @required this.sunriseDateTime,
    @required this.sunsetDateTime,
    @required this.temperature,
    @required this.feelsLikeTemperature,
    @required this.precipitationProbabilityInPercent,
    @required this.weather,
    @required this.weatherOptions,
  });

  final DateTime sunriseDateTime;
  final DateTime sunsetDateTime;
  final Temperature temperature;
  final Temperature feelsLikeTemperature;
  final double precipitationProbabilityInPercent;
  final WeatherOptions weatherOptions;
  final Weather weather;

  @override
  List<Object> get props => [
        sunriseDateTime,
        sunsetDateTime,
        temperature,
        feelsLikeTemperature,
        precipitationProbabilityInPercent,
        weatherOptions,
        weather,
      ];
}

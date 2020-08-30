import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:test_app/domain/entities/weather.dart';

class CurrentWeather extends Equatable {
  const CurrentWeather({
    @required this.sunriseDateTime,
    @required this.sunsetDateTime,
    @required this.temperature,
    @required this.feelsLikeTemperature,
    @required this.averageVisibilityInMetres,
    @required this.weather,
  });

  final DateTime sunriseDateTime;
  final DateTime sunsetDateTime;
  final double temperature;
  final double feelsLikeTemperature;
  final int averageVisibilityInMetres;
  final Weather weather;

  @override
  List<Object> get props => [
        sunriseDateTime,
        sunsetDateTime,
        temperature,
        feelsLikeTemperature,
        averageVisibilityInMetres,
        weather
      ];
}

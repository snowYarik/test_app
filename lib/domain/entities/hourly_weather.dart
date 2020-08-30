import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:test_app/domain/entities/weather_options.dart';

class HourlyWeather extends Equatable {
  const HourlyWeather({
    @required this.temperature,
    @required this.averageVisibilityInMetres,
    @required this.precipitationProbabilityInPercent,
    @required this.weatherOptions,
  });

  final double temperature;
  final int averageVisibilityInMetres;
  final double precipitationProbabilityInPercent;
  final WeatherOptions weatherOptions;

  @override
  List<Object> get props => [
        temperature,
        averageVisibilityInMetres,
        precipitationProbabilityInPercent,
        weatherOptions
      ];
}

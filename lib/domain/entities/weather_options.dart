import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:test_app/domain/entities/temperature.dart';
import 'package:test_app/domain/entities/weather.dart';

class WeatherOptions extends Equatable {
  const WeatherOptions({
    @required this.dateTime,
    @required this.feelsLikeTemperature,
    @required this.pressure,
    @required this.humidity,
    @required this.atmosphericTemperature,
    @required this.cloudinessInPercent,
    @required this.windSpeed,
    @required this.windDirectionInDegrees,
    @required this.weather,
  });

  final DateTime dateTime;
  final Temperature feelsLikeTemperature;
  final int pressure;
  final int humidity;
  final double atmosphericTemperature;
  final int cloudinessInPercent;
  final double windSpeed;
  final int windDirectionInDegrees;
  final Weather weather;

  @override
  List<Object> get props => [
        dateTime,
        feelsLikeTemperature,
        pressure,
        humidity,
        atmosphericTemperature,
        cloudinessInPercent,
        windSpeed,
        windDirectionInDegrees,
        weather,
      ];
}

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:test_app/domain/entities/weather_entity.dart';

class WeatherOptionsEntity extends Equatable {
  const WeatherOptionsEntity({
    @required this.dateTime,
    @required this.pressure,
    @required this.humidity,
    @required this.atmosphericTemperature,
    @required this.cloudinessInPercent,
    @required this.windSpeed,
    @required this.windDirectionInDegrees,
    @required this.weather,
  });

  final DateTime dateTime;
  final int pressure;
  final int humidity;
  final double atmosphericTemperature;
  final int cloudinessInPercent;
  final double windSpeed;
  final int windDirectionInDegrees;
  final WeatherEntity weather;

  @override
  List<Object> get props => [
        dateTime,
        pressure,
        humidity,
        atmosphericTemperature,
        cloudinessInPercent,
        windSpeed,
        windDirectionInDegrees,
        weather,
      ];
}

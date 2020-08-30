import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:test_app/domain/entities/current_weather.dart';
import 'package:test_app/domain/entities/daily_weather.dart';
import 'package:test_app/domain/entities/hourly_weather.dart';

class Forecast extends Equatable {
  const Forecast({
    @required this.latitide,
    @required this.longitude,
    @required this.timezone,
    @required this.timezoneOffset,
    @required this.currentWeather,
    @required this.hourlyWeathers,
    @required this.dailyWeathers,
  });

  final double latitide;
  final double longitude;
  final String timezone;
  final int timezoneOffset;
  final CurrentWeather currentWeather;
  final List<HourlyWeather> hourlyWeathers;
  final List<DailyWeather> dailyWeathers;

  @override
  List<Object> get props => [
        latitide,
        longitude,
        timezone,
        timezoneOffset,
        currentWeather,
        hourlyWeathers,
        dailyWeathers
      ];
}

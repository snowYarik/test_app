import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:test_app/data/models/forecast_model.dart';
import 'package:test_app/domain/entities/current_weather_entity.dart';
import 'package:test_app/domain/entities/daily_weather_entity.dart';
import 'package:test_app/domain/entities/hourly_weather_entity.dart';

class ForecastEntity extends Equatable {
  const ForecastEntity({
    @required this.latitide,
    @required this.longitude,
    @required this.timezone,
    @required this.timezoneOffset,
    @required this.currentWeather,
    @required this.hourlyWeathers,
    @required this.dailyWeathers,
  });

  factory ForecastEntity.fromForecastModel(
      {@required ForecastModel forecastModel}) {
    return ForecastEntity(
      latitide: forecastModel.lat,
      longitude: forecastModel.lon,
      timezone: forecastModel.timezone,
      timezoneOffset: forecastModel.timezoneOffset,
      currentWeather: CurrentWeatherEntity.fromCurrentWeatherModel(
          currentWeatherModel: forecastModel.current),
      hourlyWeathers: forecastModel.hourly
          .map((e) =>
              HourlyWeatherEntity.fromHourlyWeatherModel(hourlyWeatherModel: e))
          .toList(),
      dailyWeathers: forecastModel.daily
          .map((e) =>
              DailyWeatherEntity.fromDailyWeatherModel(dailyWeatherModel: e))
          .toList(),
    );
  }

  final double latitide;
  final double longitude;
  final String timezone;
  final int timezoneOffset;
  final CurrentWeatherEntity currentWeather;
  final List<HourlyWeatherEntity> hourlyWeathers;
  final List<DailyWeatherEntity> dailyWeathers;

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

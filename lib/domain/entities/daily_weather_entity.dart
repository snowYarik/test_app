import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:test_app/data/models/daily_weather_model.dart';
import 'package:test_app/domain/entities/temperature_entity.dart';
import 'package:test_app/domain/entities/weather_entity.dart';
import 'package:test_app/domain/entities/weather_options_entity.dart';

class DailyWeatherEntity extends Equatable {
  const DailyWeatherEntity({
    @required this.sunriseDateTime,
    @required this.sunsetDateTime,
    @required this.temperature,
    @required this.precipitationProbabilityInPercent,
    @required this.weatherOptions,
    @required this.weather,
    @required this.feelsLikeTemperatureEntity,
  });

  factory DailyWeatherEntity.fromDailyWeatherModel(
      {@required DailyWeatherModel dailyWeatherModel}) {
    return DailyWeatherEntity(
      feelsLikeTemperatureEntity:
          TemperatureEntity.fromFeelsLikeTemperatureModel(
              temperatureModel: dailyWeatherModel.feelsLike),
      precipitationProbabilityInPercent: dailyWeatherModel.pop,
      sunriseDateTime:
          DateTime.fromMillisecondsSinceEpoch(dailyWeatherModel.sunrise),
      sunsetDateTime:
          DateTime.fromMillisecondsSinceEpoch(dailyWeatherModel.sunset),
      temperature: TemperatureEntity.fromTemperatureModel(
          temperatureModel: dailyWeatherModel.temp),
      weather: WeatherEntity.fromWeatherModel(
          weatherModel: dailyWeatherModel.weather.first),
      weatherOptions: WeatherOptionsEntity(
          atmosphericTemperature: 0.0,
          cloudinessInPercent: dailyWeatherModel.clouds,
          dateTime: DateTime.fromMillisecondsSinceEpoch(dailyWeatherModel.dt),
          humidity: dailyWeatherModel.humidity,
          pressure: dailyWeatherModel.pressure,
          weather: WeatherEntity.fromWeatherModel(
              weatherModel: dailyWeatherModel.weather.first),
          windDirectionInDegrees: dailyWeatherModel.windDeg,
          windSpeed: dailyWeatherModel.windSpeed),
    );
  }

  final DateTime sunriseDateTime;
  final DateTime sunsetDateTime;
  final TemperatureEntity temperature;
  final double precipitationProbabilityInPercent;
  final WeatherOptionsEntity weatherOptions;
  final TemperatureEntity feelsLikeTemperatureEntity;
  final WeatherEntity weather;

  @override
  List<Object> get props => [
        sunriseDateTime,
        sunsetDateTime,
        temperature,
        feelsLikeTemperatureEntity,
        precipitationProbabilityInPercent,
        weatherOptions,
        weather,
      ];
}

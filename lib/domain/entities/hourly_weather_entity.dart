import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:test_app/data/models/hourly_weather_model.dart';
import 'package:test_app/domain/entities/temperature_entity.dart';
import 'package:test_app/domain/entities/weather_entity.dart';
import 'package:test_app/domain/entities/weather_options_entity.dart';

class HourlyWeatherEntity extends Equatable {
  const HourlyWeatherEntity({
    @required this.temperature,
    @required this.averageVisibilityInMetres,
    @required this.precipitationProbabilityInPercent,
    @required this.weatherOptions,
    @required this.feelsLikeTemperature,
  });

  factory HourlyWeatherEntity.fromHourlyWeatherModel(
      {@required HourlyWeatherModel hourlyWeatherModel}) {
    return HourlyWeatherEntity(
      temperature: hourlyWeatherModel.temp,
      averageVisibilityInMetres: hourlyWeatherModel.visibility,
      precipitationProbabilityInPercent: hourlyWeatherModel.pop,
      feelsLikeTemperature: hourlyWeatherModel.feelsLike,
      weatherOptions: WeatherOptionsEntity(
          atmosphericTemperature: hourlyWeatherModel.dewPoint,
          cloudinessInPercent: hourlyWeatherModel.clouds,
          dateTime: DateTime.fromMillisecondsSinceEpoch(hourlyWeatherModel.dt),
          humidity: hourlyWeatherModel.humidity,
          pressure: hourlyWeatherModel.pressure,
          weather: WeatherEntity.fromWeatherModel(
              weatherModel: hourlyWeatherModel.weather.first),
          windDirectionInDegrees: hourlyWeatherModel.windDeg,
          windSpeed: hourlyWeatherModel.windSpeed),
    );
  }

  final double temperature;
  final int averageVisibilityInMetres;
  final double precipitationProbabilityInPercent;
  final WeatherOptionsEntity weatherOptions;
  final double feelsLikeTemperature;

  @override
  List<Object> get props => [
        temperature,
        averageVisibilityInMetres,
        precipitationProbabilityInPercent,
        weatherOptions,
        feelsLikeTemperature,
      ];
}

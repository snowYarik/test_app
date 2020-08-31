import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:test_app/data/models/models.dart';
import 'package:test_app/domain/entities/weather_entity.dart';

class CurrentWeatherEntity extends Equatable {
  const CurrentWeatherEntity({
    @required this.sunriseDateTime,
    @required this.sunsetDateTime,
    @required this.temperature,
    @required this.feelsLikeTemperature,
    @required this.averageVisibilityInMetres,
    @required this.weather,
  });

  factory CurrentWeatherEntity.fromCurrentWeatherModel(
      {@required CurrentWeatherModel currentWeatherModel}) {
    return CurrentWeatherEntity(
      sunriseDateTime:
          DateTime.fromMillisecondsSinceEpoch(currentWeatherModel.sunrise),
      sunsetDateTime:
          DateTime.fromMillisecondsSinceEpoch(currentWeatherModel.sunset),
      temperature: currentWeatherModel.temp,
      feelsLikeTemperature: currentWeatherModel.feelsLike,
      averageVisibilityInMetres: currentWeatherModel.visibility,
      weather: WeatherEntity.fromWeatherModel(
          weatherModel: currentWeatherModel.weather.first),
    );
  }

  final DateTime sunriseDateTime;
  final DateTime sunsetDateTime;
  final double temperature;
  final double feelsLikeTemperature;
  final int averageVisibilityInMetres;
  final WeatherEntity weather;

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

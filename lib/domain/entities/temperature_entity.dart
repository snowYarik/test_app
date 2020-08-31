import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:test_app/data/models/models.dart';

class TemperatureEntity extends Equatable {
  const TemperatureEntity({
    @required this.day,
    @required this.night,
    @required this.evening,
    @required this.morning,
    this.minimum,
    this.maximum,
  });

  factory TemperatureEntity.fromTemperatureModel(
      {@required TemperatureModel temperatureModel}) {
    return TemperatureEntity(
        day: temperatureModel.day,
        night: temperatureModel.night,
        evening: temperatureModel.eve,
        morning: temperatureModel.morn,
        minimum: temperatureModel.min,
        maximum: temperatureModel.max);
  }

  factory TemperatureEntity.fromFeelsLikeTemperatureModel(
      {@required FeelsLikeTemperatureModel temperatureModel}) {
    return TemperatureEntity(
        day: temperatureModel.day,
        night: temperatureModel.night,
        evening: temperatureModel.eve,
        morning: temperatureModel.morn);
  }

  final double day;
  final double night;
  final double evening;
  final double morning;
  final double minimum;
  final double maximum;

  @override
  List<Object> get props => [
        day,
        night,
        evening,
        morning,
        minimum,
        maximum,
      ];
}

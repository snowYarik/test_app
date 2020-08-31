import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:test_app/data/models/models.dart';

class WeatherEntity extends Equatable {
  const WeatherEntity({
    @required this.id,
    @required this.parameter,
    @required this.description,
    @required this.iconPath,
  });

  factory WeatherEntity.fromWeatherModel(
      {@required WeatherModel weatherModel}) {
    return WeatherEntity(
        id: weatherModel.id,
        parameter: weatherModel.main,
        description: weatherModel.description,
        iconPath: weatherModel.icon);
  }

  final int id;
  final String parameter;
  final String description;
  final String iconPath;

  @override
  List<Object> get props => [
        id,
        parameter,
        description,
        iconPath,
      ];
}

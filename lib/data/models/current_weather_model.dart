import 'package:json_annotation/json_annotation.dart';
import 'package:test_app/data/models/models.dart';
import 'package:hive/hive.dart';
part 'current_weather_model.g.dart';

@HiveType(typeId: 1)
@JsonSerializable()
class CurrentWeatherModel extends HiveObject {
  CurrentWeatherModel({
    this.dt,
    this.sunrise,
    this.sunset,
    this.temp,
    this.feelsLike,
    this.pressure,
    this.humidity,
    this.dewPoint,
    this.uvi,
    this.clouds,
    this.visibility,
    this.windSpeed,
    this.windDeg,
    this.weather,
  });

  factory CurrentWeatherModel.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherModelFromJson(json);

  @JsonKey()
  final int dt;
  @JsonKey()
  final int sunrise;
  @JsonKey()
  final int sunset;
  @JsonKey()
  final double temp;
  @JsonKey(name: 'feels_like')
  final double feelsLike;
  @JsonKey()
  final int pressure;
  @JsonKey()
  final int humidity;
  @JsonKey(name: 'dew_point')
  final double dewPoint;
  @JsonKey()
  final double uvi;
  @JsonKey()
  final int clouds;
  @JsonKey()
  final int visibility;
  @JsonKey(name: 'wind_speed')
  final double windSpeed;
  @JsonKey(name: 'wind_deg')
  final int windDeg;
  @JsonKey()
  final List<WeatherModel> weather;

  Map<String, dynamic> toJson() => _$CurrentWeatherModelToJson(this);
}

import 'package:json_annotation/json_annotation.dart';
import 'package:test_app/data/models/models.dart';
part 'current.g.dart';

@JsonSerializable()
class CurrentWeatherModel {
  const CurrentWeatherModel({
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
      _$CurrentFromJson(json);
      
  @JsonKey()
  final int dt;
  @JsonKey()
  final int sunrise;
  @JsonKey()
  final int sunset;
  @JsonKey()
  final double temp;
  @JsonKey()
  final double feelsLike;
  @JsonKey()
  final int pressure;
  @JsonKey()
  final int humidity;
  @JsonKey()
  final double dewPoint;
  @JsonKey()
  final double uvi;
  @JsonKey()
  final int clouds;
  @JsonKey()
  final int visibility;
  @JsonKey()
  final double windSpeed;
  @JsonKey()
  final int windDeg;
  @JsonKey()
  final List<WeatherModel> weather;

  Map<String, dynamic> toJson() => _$CurrentToJson(this);
}
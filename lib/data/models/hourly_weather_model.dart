import 'package:json_annotation/json_annotation.dart';
import 'package:test_app/data/models/models.dart';
import 'package:hive/hive.dart';
part 'hourly_weather_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 5)
class HourlyWeatherModel extends HiveObject {
  HourlyWeatherModel({
    this.dt,
    this.temp,
    this.feelsLike,
    this.pressure,
    this.humidity,
    this.dewPoint,
    this.clouds,
    this.visibility,
    this.windSpeed,
    this.windDeg,
    this.weather,
    this.pop,
    this.rain,
  });

  factory HourlyWeatherModel.fromJson(Map<String, dynamic> json) =>
      _$HourlyWeatherModelFromJson(json);

  @JsonKey()
  final int dt;
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
  final int clouds;
  @JsonKey()
  final int visibility;
  @JsonKey(name: 'wind_speed')
  final double windSpeed;
  @JsonKey(name: 'wind_deg')
  final int windDeg;
  @JsonKey()
  final List<WeatherModel> weather;
  @JsonKey()
  final double pop;
  @JsonKey()
  final RainModel rain;

  Map<String, dynamic> toJson() => _$HourlyWeatherModelToJson(this);
}

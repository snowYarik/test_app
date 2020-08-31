import 'package:json_annotation/json_annotation.dart';
import 'package:test_app/data/models/models.dart';
import 'package:hive/hive.dart';
part 'daily_weather_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 2)
class DailyWeatherModel extends HiveObject {
  DailyWeatherModel({
    this.dt,
    this.sunrise,
    this.sunset,
    this.temp,
    this.feelsLike,
    this.pressure,
    this.humidity,
    this.dewPoint,
    this.windSpeed,
    this.windDeg,
    this.weather,
    this.clouds,
    this.pop,
    this.rain,
    this.uvi,
  });

  factory DailyWeatherModel.fromJson(Map<String, dynamic> json) =>
      _$DailyWeatherModelFromJson(json);

  @JsonKey()
  final int dt;
  @JsonKey()
  final int sunrise;
  @JsonKey()
  final int sunset;
  @JsonKey()
  final TemperatureModel temp;
  @JsonKey(name: 'feels_like')
  final FeelsLikeTemperatureModel feelsLike;
  @JsonKey()
  final int pressure;
  @JsonKey()
  final int humidity;
  @JsonKey(name: 'dew_point')
  final double dewPoint;
  @JsonKey(name: 'wind_speed')
  final double windSpeed;
  @JsonKey(name: 'wind_deg')
  final int windDeg;
  @JsonKey()
  final List<WeatherModel> weather;
  @JsonKey()
  final int clouds;
  @JsonKey()
  final double pop;
  @JsonKey()
  final double rain;
  @JsonKey()
  final double uvi;

  Map<String, dynamic> toJson() => _$DailyWeatherModelToJson(this);
}

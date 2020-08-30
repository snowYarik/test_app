import 'package:json_annotation/json_annotation.dart';
import 'package:test_app/data/models/models.dart';
part 'hourly.g.dart';

@JsonSerializable()
class Hourly {
  const Hourly({
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

  @JsonKey()
  final int dt;
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
  final int clouds;
  @JsonKey()
  final int visibility;
  @JsonKey()
  final double windSpeed;
  @JsonKey()
  final int windDeg;
  @JsonKey()
  final List<Weather> weather;
  @JsonKey()
  final double pop;
  @JsonKey()
  final Rain rain;

  factory Hourly.fromJson(Map<String, dynamic> json) => _$HourlyFromJson(json);
  Map<String, dynamic> toJson() => _$HourlyToJson(this);
}

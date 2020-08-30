import 'package:json_annotation/json_annotation.dart';
import 'package:test_app/data/models/models.dart';
part 'daily.g.dart';

@JsonSerializable()
class Daily {
  const Daily({
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

  @JsonKey()
  final int dt;
  @JsonKey()
  final int sunrise;
  @JsonKey()
  final int sunset;
  @JsonKey()
  final Temp temp;
  @JsonKey()
  final FeelsLike feelsLike;
  @JsonKey()
  final int pressure;
  @JsonKey()
  final int humidity;
  @JsonKey()
  final double dewPoint;
  @JsonKey()
  final double windSpeed;
  @JsonKey()
  final int windDeg;
  @JsonKey()
  final List<Weather> weather;
  @JsonKey()
  final int clouds;
  @JsonKey()
  final double pop;
  @JsonKey()
  final double rain;
  @JsonKey()
  final double uvi;
}

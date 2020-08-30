import 'package:json_annotation/json_annotation.dart';
import 'package:test_app/data/models/models.dart';
part 'forecast.g.dart';

@JsonSerializable()
class Forecast {
  const Forecast({
    this.lat,
    this.lon,
    this.timezone,
    this.timezoneOffset,
    this.current,
    this.minutely,
    this.hourly,
    this.daily,
  });

  @JsonKey()
  final double lat;
  @JsonKey()
  final double lon;
  @JsonKey()
  final String timezone;
  @JsonKey()
  final int timezoneOffset;
  @JsonKey()
  final Current current;
  @JsonKey()
  final List<Minutely> minutely;
  @JsonKey()
  final List<Hourly> hourly;
  @JsonKey()
  final List<Daily> daily;

  factory Forecast.fromJson(Map<String, dynamic> json) =>
      _$ForecastFromJson(json);
  Map<String, dynamic> toJson() => _$ForecastToJson(this);
}

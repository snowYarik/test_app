import 'package:json_annotation/json_annotation.dart';
import 'package:test_app/data/models/models.dart';
part 'forecast.g.dart';

@JsonSerializable()
class ForecastModel {
  const ForecastModel({
    this.lat,
    this.lon,
    this.timezone,
    this.timezoneOffset,
    this.current,
    this.minutely,
    this.hourly,
    this.daily,
  });

  factory ForecastModel.fromJson(Map<String, dynamic> json) =>
      _$ForecastFromJson(json);

  @JsonKey()
  final double lat;
  @JsonKey()
  final double lon;
  @JsonKey()
  final String timezone;
  @JsonKey()
  final int timezoneOffset;
  @JsonKey()
  final CurrentWeatherModel current;
  @JsonKey()
  final List<MinutelyWeatherModel> minutely;
  @JsonKey()
  final List<HourlyWeatherModel> hourly;
  @JsonKey()
  final List<DailyWeatherModel> daily;

  Map<String, dynamic> toJson() => _$ForecastToJson(this);
}

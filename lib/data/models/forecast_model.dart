import 'package:json_annotation/json_annotation.dart';
import 'package:test_app/data/models/models.dart';
import 'package:hive/hive.dart';

part 'forecast_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 4)
class ForecastModel extends HiveObject {
  ForecastModel({
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
      _$ForecastModelFromJson(json);

  @JsonKey()
  final double lat;
  @JsonKey()
  final double lon;
  @JsonKey()
  final String timezone;
  @JsonKey(name: 'timezone_offset')
  final int timezoneOffset;
  @JsonKey()
  final CurrentWeatherModel current;
  @JsonKey()
  final List<MinutelyWeatherModel> minutely;
  @JsonKey()
  final List<HourlyWeatherModel> hourly;
  @JsonKey()
  final List<DailyWeatherModel> daily;

  Map<String, dynamic> toJson() => _$ForecastModelToJson(this);
}

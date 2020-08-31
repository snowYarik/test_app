import 'package:json_annotation/json_annotation.dart';
import 'package:hive/hive.dart';
part 'minutely_weather_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 6)
class MinutelyWeatherModel extends HiveObject {
  MinutelyWeatherModel({
    this.dt,
    this.precipitation,
  });

  factory MinutelyWeatherModel.fromJson(Map<String, dynamic> json) =>
      _$MinutelyWeatherModelFromJson(json);

  @JsonKey()
  final int dt;
  @JsonKey()
  final int precipitation;

  Map<String, dynamic> toJson() => _$MinutelyWeatherModelToJson(this);
}

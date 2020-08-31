import 'package:json_annotation/json_annotation.dart';
part 'minutely.g.dart';

@JsonSerializable()
class MinutelyWeatherModel {
  const MinutelyWeatherModel({
    this.dt,
    this.precipitation,
  });

  factory MinutelyWeatherModel.fromJson(Map<String, dynamic> json) =>
      _$MinutelyFromJson(json);

  @JsonKey()
  final int dt;
  @JsonKey()
  final int precipitation;

  Map<String, dynamic> toJson() => _$MinutelyToJson(this);
}

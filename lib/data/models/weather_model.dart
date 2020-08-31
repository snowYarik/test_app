import 'package:json_annotation/json_annotation.dart';
part 'weather.g.dart';

@JsonSerializable()
class WeatherModel {
  const WeatherModel({
    this.id,
    this.main,
    this.description,
    this.icon,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);

  @JsonKey()
  final int id;
  @JsonKey()
  final String main;
  @JsonKey()
  final String description;
  @JsonKey()
  final String icon;

  Map<String, dynamic> toJson() => _$WeatherToJson(this);
}

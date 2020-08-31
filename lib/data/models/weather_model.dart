import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
part 'weather_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 9)
class WeatherModel extends HiveObject {
  WeatherModel({
    this.id,
    this.main,
    this.description,
    this.icon,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);

  @JsonKey()
  final int id;
  @JsonKey()
  final String main;
  @JsonKey()
  final String description;
  @JsonKey()
  final String icon;

  Map<String, dynamic> toJson() => _$WeatherModelToJson(this);
}

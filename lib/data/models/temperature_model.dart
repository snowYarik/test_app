import 'package:json_annotation/json_annotation.dart';
part 'temp.g.dart';

@JsonSerializable()
class TemperatureModel {
  const TemperatureModel({
    this.day,
    this.min,
    this.max,
    this.night,
    this.eve,
    this.morn,
  });

  factory TemperatureModel.fromJson(Map<String, dynamic> json) => _$TempFromJson(json);

  @JsonKey()
  final double day;
  @JsonKey()
  final double min;
  @JsonKey()
  final double max;
  @JsonKey()
  final double night;
  @JsonKey()
  final double eve;
  @JsonKey()
  final double morn;

  Map<String, dynamic> toJson() => _$TempToJson(this);
}
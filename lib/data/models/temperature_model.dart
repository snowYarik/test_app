import 'package:json_annotation/json_annotation.dart';
import 'package:hive/hive.dart';
part 'temperature_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 8)
class TemperatureModel extends HiveObject {
  TemperatureModel({
    this.day,
    this.min,
    this.max,
    this.night,
    this.eve,
    this.morn,
  });

  factory TemperatureModel.fromJson(Map<String, dynamic> json) =>
      _$TemperatureModelFromJson(json);

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

  Map<String, dynamic> toJson() => _$TemperatureModelToJson(this);
}

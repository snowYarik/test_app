import 'package:json_annotation/json_annotation.dart';
import 'package:hive/hive.dart';
part 'feels_like_temperature_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 3)
class FeelsLikeTemperatureModel extends HiveObject {
  FeelsLikeTemperatureModel({
    this.day,
    this.night,
    this.eve,
    this.morn,
  });

  factory FeelsLikeTemperatureModel.fromJson(Map<String, dynamic> json) =>
      _$FeelsLikeTemperatureModelFromJson(json);

  @JsonKey()
  final double day;
  @JsonKey()
  final double night;
  @JsonKey()
  final double eve;
  @JsonKey()
  final double morn;

  Map<String, dynamic> toJson() => _$FeelsLikeTemperatureModelToJson(this);
}

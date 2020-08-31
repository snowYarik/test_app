import 'package:json_annotation/json_annotation.dart';
part 'feels_like.g.dart';

@JsonSerializable()
class FeelsLikeTemperatureModel {
  const FeelsLikeTemperatureModel({
    this.day,
    this.night,
    this.eve,
    this.morn,
  });
  
  factory FeelsLikeTemperatureModel.fromJson(Map<String, dynamic> json) =>
      _$FeelsLikeFromJson(json);

  @JsonKey()
  final double day;
  @JsonKey()
  final double night;
  @JsonKey()
  final double eve;
  @JsonKey()
  final double morn;

  Map<String, dynamic> toJson() => _$FeelsLikeToJson(this);
}

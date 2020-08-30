import 'package:json_annotation/json_annotation.dart';
part 'feels_like.g.dart';

@JsonSerializable()
class FeelsLike {
  const FeelsLike({
    this.day,
    this.night,
    this.eve,
    this.morn,
  });
  @JsonKey()
  final double day;
  @JsonKey()
  final double night;
  @JsonKey()
  final double eve;
  @JsonKey()
  final double morn;

  factory FeelsLike.fromJson(Map<String, dynamic> json) =>
      _$FeelsLikeFromJson(json);
  Map<String, dynamic> toJson() => _$FeelsLikeToJson(this);
}

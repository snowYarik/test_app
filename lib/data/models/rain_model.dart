import 'package:json_annotation/json_annotation.dart';
part 'rain.g.dart';

@JsonSerializable()
class RainModel {
  const RainModel({
    this.d1h,
  });

  factory RainModel.fromJson(Map<String, dynamic> json) => _$RainFromJson(json);

  @JsonKey()
  final double d1h;

  Map<String, dynamic> toJson() => _$RainToJson(this);
}

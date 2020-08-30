import 'package:json_annotation/json_annotation.dart';
part 'minutely.g.dart';

@JsonSerializable()
class Minutely {
  const Minutely({
    this.dt,
    this.precipitation,
  });

  @JsonKey()
  final int dt;
  @JsonKey()
  final int precipitation;

  factory Minutely.fromJson(Map<String, dynamic> json) =>
      _$MinutelyFromJson(json);
  Map<String, dynamic> toJson() => _$MinutelyToJson(this);
}

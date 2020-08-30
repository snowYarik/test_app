import 'package:json_annotation/json_annotation.dart';
part 'weather.g.dart';

@JsonSerializable()
class Weather {
  const Weather({
    this.id,
    this.main,
    this.description,
    this.icon,
  });

  @JsonKey()
  final int id;
  @JsonKey()
  final String main;
  @JsonKey()
  final String description;
  @JsonKey()
  final String icon;
}

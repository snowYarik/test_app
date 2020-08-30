import 'package:json_annotation/json_annotation.dart';
part 'rain.g.dart';

@JsonSerializable()
class Rain {
  const Rain({
    this.d1h,
  });

  factory Rain.fromJson(Map<String, dynamic> json) => _$RainFromJson(json);

  @JsonKey()
  final double d1h;

  Map<String, dynamic> toJson() => _$RainToJson(this);
}

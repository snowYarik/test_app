import 'package:json_annotation/json_annotation.dart';
part 'rain.g.dart';

@JsonSerializable()
class Rain {
  const Rain({
    this.d1h,
  });

  @JsonKey()
  final double d1h;
}

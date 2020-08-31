import 'package:json_annotation/json_annotation.dart';
import 'package:hive/hive.dart';
part 'rain_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 7)
class RainModel extends HiveObject {
  RainModel({
    this.d1h,
  });

  factory RainModel.fromJson(Map<String, dynamic> json) =>
      _$RainModelFromJson(json);

  @JsonKey()
  final double d1h;

  Map<String, dynamic> toJson() => _$RainModelToJson(this);
}

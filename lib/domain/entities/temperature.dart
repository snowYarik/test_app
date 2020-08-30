import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class Temperature extends Equatable {
  const Temperature({
    @required this.day,
    @required this.night,
    @required this.evening,
    @required this.morning,
    this.minimum,
    this.maximum,
  });

  final double day;
  final double night;
  final double evening;
  final double morning;
  final double minimum;
  final double maximum;

  @override
  List<Object> get props => [
        day,
        night,
        evening,
        morning,
        minimum,
        maximum,
      ];
}

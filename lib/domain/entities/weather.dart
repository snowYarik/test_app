import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class Weather extends Equatable {
  const Weather({
    @required this.id,
    @required this.parameter,
    @required this.description,
    @required this.iconPath,
  });

  final int id;
  final String parameter;
  final String description;
  final String iconPath;

  @override
  List<Object> get props => [
        id,
        parameter,
        description,
        iconPath,
      ];
}

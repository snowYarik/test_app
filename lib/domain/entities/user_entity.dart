import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class UserEntity extends Equatable {
  const UserEntity({
    @required this.id,
  });

  final String id;

  @override
  List<Object> get props => [id];
}

import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class User extends Equatable {
  const User({
    @required this.id,
  });

  final String id;

  @override
  List<Object> get props => [id];
}

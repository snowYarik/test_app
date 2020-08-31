import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:hive/hive.dart';
part 'user_model.g.dart';

@HiveType(typeId: 0)
// ignore: must_be_immutable
class UserModel extends HiveObject implements Equatable {
  UserModel({
    @required this.id,
    @required this.login,
    @required this.password,
  });

  final String id;
  final String login;
  final String password;

  @override
  List<Object> get props => [id, login, password];

  @override
  bool get stringify => true;
}

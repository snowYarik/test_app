import 'package:equatable/equatable.dart';

abstract class SignInPageEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class SignInWithGoogle extends SignInPageEvent {}

class SignInWithFacebook extends SignInPageEvent {}

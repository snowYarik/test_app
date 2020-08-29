import 'package:equatable/equatable.dart';

abstract class SplashPageState extends Equatable {
  @override
  List<Object> get props => [];
}

class SplashPageInited extends SplashPageState {}

class SignedIn extends SplashPageState {}

class UnSignedIn extends SplashPageState {}

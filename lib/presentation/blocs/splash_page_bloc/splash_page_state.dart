import 'package:equatable/equatable.dart';

abstract class SplashPageState extends Equatable {
  @override
  List<Object> get props => [];
}

class SplashPageInited extends SplashPageState {}

class SplashPageLoaded extends SplashPageState {}

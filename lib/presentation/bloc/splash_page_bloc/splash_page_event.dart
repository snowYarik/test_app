import 'package:equatable/equatable.dart';

abstract class SplashPageEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class StartLoading extends SplashPageEvent {}

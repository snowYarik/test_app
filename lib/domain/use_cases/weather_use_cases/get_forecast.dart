import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:test_app/domain/repositories/i_weather_repository.dart';
import 'package:test_app/domain/use_cases/i_use_case.dart';

class GetForecast extends IUseCase<void, Params> {
  const GetForecast({
    @required IWeatherRepository weatherRepository,
  }) : _weatherRepository = weatherRepository;

  final IWeatherRepository _weatherRepository;

  @override
  Future<void> execute({Params params}) {
    return _weatherRepository.getForecast(
        latitude: params.latitude,
        longitude: params.longitude,
        exclude: params.exclude);
  }
}

class Params extends Equatable {
  const Params({
    @required this.latitude,
    @required this.longitude,
    this.exclude,
  });

  final double latitude;
  final double longitude;
  final String exclude;

  @override
  List<Object> get props => [];
}

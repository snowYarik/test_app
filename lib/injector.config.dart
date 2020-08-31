// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'data/data_sources/auth_data_sources/remote/auth_remote_data_source.dart';
import 'data/repositories/auth_repository.dart';
import 'data/data_sources/auth_data_sources/remote/i_auth_remote_data_source.dart';
import 'domain/repositories/i_auth_repository.dart';
import 'data/data_sources/weather_data_source/remote/i_weather_remote_data_source.dart';
import 'domain/repositories/i_weather_repository.dart';
import 'data/mappers/user_mappers/user_model_data_mapper.dart';
import 'data/mappers/user_mappers/user_model_json_mapper.dart';
import 'data/data_sources/weather_data_source/remote/weather_remote_data_source.dart';
import 'data/repositories/weather_repository.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  gh.factory<IAuthRemoteDataSource>(() => AuthRemoteDataSource());
  gh.factory<IWeatherRemoteDataSource>(() => WeatherRemoteDataSource());
  gh.factory<IWeatherRepository>(() => WeatherRepository(
      weatherRemoteDataSource: get<IWeatherRemoteDataSource>()));
  gh.factory<UserModelDataMapper>(() => UserModelDataMapper());
  gh.factory<UserModelJsonMapper>(() => UserModelJsonMapper());
  gh.factory<IAuthRepository>(() => AuthRepository(
      authRemoteDataSource: get<IAuthRemoteDataSource>(),
      userModelDataMapper: get<UserModelDataMapper>()));
  return get;
}

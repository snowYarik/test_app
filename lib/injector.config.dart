// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'data/data_sources/auth_data_sources/auth_remote_data_source.dart';
import 'data/data_sources/auth_data_sources/i_auth_remote_data_source.dart';
import 'data/mappers/user_model_data_mapper.dart';
import 'data/mappers/user_model_json_mapper.dart';
import 'data/repositories/auth_repository.dart';
import 'domain/repositories/i_auth_repository.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  gh.factory<IAuthRemoteDataSource>(() => AuthRemoteDataSource());
  gh.factory<UserModelDataMapper>(() => UserModelDataMapper());
  gh.factory<UserModelJsonMapper>(() => UserModelJsonMapper());
  gh.factory<IAuthRepository>(() => AuthRepository(
      authRemoteDataSource: get<AuthRemoteDataSource>(),
      userModelDataMapper: get<UserModelDataMapper>()));
  return get;
}
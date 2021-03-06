import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:test_app/data/data_sources/auth_data_sources/remote/i_auth_remote_data_source.dart';
import 'package:test_app/data/mappers/user_mappers/user_model_data_mapper.dart';
import 'package:test_app/domain/entities/user_entity.dart';
import 'package:test_app/domain/repositories/i_auth_repository.dart';

@Injectable(as: IAuthRepository)
class AuthRepository extends IAuthRepository {
  AuthRepository({
    @required IAuthRemoteDataSource authRemoteDataSource,
    @required UserModelDataMapper userModelDataMapper,
  })  : _authRemoteDataSource = authRemoteDataSource,
        _userModelDataMapper = userModelDataMapper;

  final IAuthRemoteDataSource _authRemoteDataSource;
  final UserModelDataMapper _userModelDataMapper;

  @override
  Future<bool> get isSignedIn => _authRemoteDataSource.isSignedIn;

  @override
  Future<UserEntity> signInWithGoogle() async {
    final userModel =
        await _authRemoteDataSource.signInWithGoogle().catchError((error) {
      throw error;
    });
    return _userModelDataMapper.transformUserModelToUserEntity(
        userModel: userModel);
  }

  @override
  Future<UserEntity> signInWithFacebook() async {
    final userModel =
        await _authRemoteDataSource.signInWithFacebook().catchError((error) {
      throw error;
    });
    return _userModelDataMapper.transformUserModelToUserEntity(
        userModel: userModel);
  }

  @override
  Future<bool> signOut() {
    return _authRemoteDataSource
        .signOut()
        .then((_) => true)
        .catchError((error) {
      throw error;
    });
  }
}

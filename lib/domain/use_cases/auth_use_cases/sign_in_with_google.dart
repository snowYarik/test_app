import 'package:meta/meta.dart';
import 'package:test_app/domain/entities/user_entity.dart';
import 'package:test_app/domain/repositories/i_auth_repository.dart';
import 'package:test_app/domain/use_cases/i_use_case.dart';

class SignInWithGoogle extends IUseCase<UserEntity, NoParams> {
  const SignInWithGoogle({
    @required IAuthRepository authRespository,
  }) : _authRepository = authRespository;

  final IAuthRepository _authRepository;

  @override
  Future<UserEntity> execute({NoParams params}) {
    return _authRepository.signInWithGoogle();
  }
}

import 'package:meta/meta.dart';
import 'package:test_app/domain/repositories/i_auth_repository.dart';
import 'package:test_app/domain/use_cases/i_use_case.dart';

class SignOut extends IUseCase<void, NoParams> {
  const SignOut({
    @required IAuthRepository authRespository,
  }) : _authRepository = authRespository;

  final IAuthRepository _authRepository;

  @override
  Future<bool> execute({@required NoParams params}) {
    return _authRepository.signOut();
  }
}

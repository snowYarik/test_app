import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/domain/repositories/i_auth_repository.dart';
import 'package:test_app/domain/use_cases/auth_use_cases/sign_in_with_facebook.dart'
    as facebook_sing_in;
import 'package:test_app/domain/use_cases/auth_use_cases/sign_in_with_google.dart'
    as google_sing_in;
import 'package:test_app/injector.dart';
import 'package:test_app/presentation/bloc/sign_in_page_bloc/bloc.dart';

class SignInPageBloc extends Bloc<SignInPageEvent, SignInPageState> {
  SignInPageBloc() : super(SignInPageInited());

  @override
  Stream<SignInPageState> mapEventToState(SignInPageEvent event) async* {
    if (event is SignInWithGoogle) {
      final user = await google_sing_in.SignInWithGoogle(
              authRespository: getIt<IAuthRepository>())
          .execute();
      if (user != null) {
        yield SignedIn();
      } else {
        yield UnSignedIn();
      }
    } else if (event is SignInWithFacebook) {
      final user = await facebook_sing_in.SignInWithFacebook(
              authRespository: getIt<IAuthRepository>())
          .execute();
      if (user != null) {
        yield SignedIn();
      } else {
        yield UnSignedIn();
      }
    }
  }
}

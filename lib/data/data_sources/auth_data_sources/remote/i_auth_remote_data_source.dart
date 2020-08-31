import 'package:test_app/data/models/user.dart';

abstract class IAuthRemoteDataSource {
  Future<UserModel> signInWithGoogle();
  Future<UserModel> signInWithFacebook();
  Future<void> signOut();
  Future<bool> get isSignedIn;
}

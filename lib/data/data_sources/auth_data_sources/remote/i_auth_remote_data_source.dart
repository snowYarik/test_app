import 'package:test_app/data/models/user.dart';

abstract class IAuthRemoteDataSource {
  Future<User> signInWithGoogle();
  Future<User> signInWithFacebook();
  Future<void> signOut();
  Future<bool> get isSignedIn;
}

import 'package:test_app/domain/entities/user_entity.dart';

abstract class IAuthRepository {
  Future<User> signInWithGoogle();
  Future<User> signInWithFacebook();
  Future<bool> signOut();
  Future<bool> get isSignedIn;
}

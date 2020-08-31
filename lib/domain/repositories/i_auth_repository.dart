import 'package:test_app/domain/entities/user_entity.dart';

abstract class IAuthRepository {
  Future<UserEntity> signInWithGoogle();
  Future<UserEntity> signInWithFacebook();
  Future<bool> signOut();
  Future<bool> get isSignedIn;
}

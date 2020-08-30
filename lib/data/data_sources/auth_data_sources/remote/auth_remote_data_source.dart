import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:test_app/data/data_sources/auth_data_sources/remote/i_auth_remote_data_source.dart';
import 'package:test_app/data/mappers/user_mappers/user_model_data_mapper.dart';
import 'package:test_app/data/models/user.dart' as user_model;

@Injectable(as: IAuthRemoteDataSource)
class AuthRemoteDataSource extends IAuthRemoteDataSource {
  AuthRemoteDataSource()
      : _firebaseAuth = FirebaseAuth.instance,
        _userModelDataMapper = UserModelDataMapper();

  final FirebaseAuth _firebaseAuth;
  final UserModelDataMapper _userModelDataMapper;

  @override
  Future<bool> get isSignedIn async => _firebaseAuth.currentUser != null;

  @override
  Future<user_model.User> signInWithGoogle() async {
    final googleAccount = await GoogleSignIn().signIn();
    final googleAuth = await googleAccount.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    final authResult = await _firebaseAuth.signInWithCredential(credential);
    if (authResult != null) {
      return _userModelDataMapper.transformFirebaseUserToUserModel(
          firebaseUser: authResult.user);
    }
    throw Exception('Something was wrong');
  }

  @override
  Future<user_model.User> signInWithFacebook() async {
    final facebookLogin = FacebookLogin();
    final result = await facebookLogin.logIn(['email']);
    switch (result.status) {
      case FacebookLoginStatus.loggedIn:
        final firebaseUser =
            await _authFirebaseWithFacebook(token: result.accessToken);
        return _userModelDataMapper.transformFirebaseUserToUserModel(
            firebaseUser: firebaseUser);
        break;
      case FacebookLoginStatus.cancelledByUser:
        return null;
        break;
      case FacebookLoginStatus.error:
    }
    throw Exception(result.errorMessage);
  }

  Future<User> _authFirebaseWithFacebook(
      {@required FacebookAccessToken token}) async {
    final credential = FacebookAuthProvider.credential(token.token);
    final firebaseUser = await _firebaseAuth
        .signInWithCredential(credential)
        .catchError((error) {
      throw error;
    });
    return firebaseUser.user;
  }

  @override
  Future<void> signOut() {
    return _firebaseAuth.signOut();
  }
}

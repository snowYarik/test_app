import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:test_app/data/models/user_model.dart';
import 'package:test_app/domain/entities/user_entity.dart';

@injectable
class UserModelDataMapper {
  User transformUserModelToUserEntity({@required UserModel userModel}) {
    return User(
      id: userModel.id,
    );
  }

  UserModel transformUserEntityToUserModel({@required User userEntity}) {
    return UserModel(
      id: userEntity.id,
    );
  }

  UserModel transformFirebaseUserToUserModel(
      {@required auth.User firebaseUser}) {
    return UserModel(
      id: firebaseUser.uid,
    );
  }
}

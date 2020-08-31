import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:test_app/data/models/user_model.dart' as user_model;
import 'package:test_app/domain/entities/user_entity.dart' as user_entity;

@injectable
class UserModelDataMapper {
  user_entity.UserEntity transformUserModelToUserEntity(
      {@required user_model.UserModel userModel}) {
    return user_entity.UserEntity(
      id: userModel.id,
    );
  }

  user_model.UserModel transformUserEntityToUserModel(
      {@required user_entity.UserEntity userEntity}) {
    return user_model.UserModel(
      id: userEntity.id,
    );
  }

  user_model.UserModel transformFirebaseUserToUserModel(
      {@required auth.User firebaseUser}) {
    return user_model.UserModel(
      id: firebaseUser.uid,
    );
  }
}

import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:test_app/data/models/user.dart' as user_model;
import 'package:test_app/domain/entities/user_entity.dart' as user_entity;

@injectable
class UserModelDataMapper {
  user_entity.User transformUserModelToUserEntity(
      {@required user_model.User userModel}) {
    return user_entity.User(
      id: userModel.id,
    );
  }

  user_model.User transformUserEntityToUserModel(
      {@required user_entity.User userEntity}) {
    return user_model.User(
      id: userEntity.id,
    );
  }

  user_model.User transformFirebaseUserToUserModel(
      {@required auth.User firebaseUser}) {
    return user_model.User(
      id: firebaseUser.uid,
    );
  }
}

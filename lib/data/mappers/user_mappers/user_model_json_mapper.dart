import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:test_app/data/models/user.dart';

@injectable
class UserModelJsonMapper {
  UserModel transformJsonToUserModel({@required Map<String, dynamic> json}) {
    return UserModel(
      id: json['id'] as String,
    );
  }

  Map<String, dynamic> transformUserModeltoJson({@required UserModel userModel}) {
    return <String, dynamic>{
      'id': userModel.id,
    };
  }
}

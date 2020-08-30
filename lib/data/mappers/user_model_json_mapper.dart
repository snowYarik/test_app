import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:test_app/data/models/user.dart';

@injectable
class UserModelJsonMapper {
  User transformJsonToUserModel({@required Map<String, dynamic> json}) {
    return User(
      id: json['id'] as String,
    );
  }

  Map<String, dynamic> transformUserModeltoJson(
      {@required User userModel}) {
    return <String, dynamic>{
      'id': userModel.id,
    };
  }
}

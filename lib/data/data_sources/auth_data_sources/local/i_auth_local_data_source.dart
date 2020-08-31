import 'package:flutter/foundation.dart';
import 'package:test_app/data/models/user_model.dart';

abstract class IAuthLocalDataSource {
  Future<void> signInWithCridentials({@required UserModel userModel});
}

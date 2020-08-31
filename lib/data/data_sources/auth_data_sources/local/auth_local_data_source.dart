import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:test_app/data/data_sources/auth_data_sources/local/i_auth_local_data_source.dart';
import 'package:hive/hive.dart';
import 'package:test_app/data/models/models.dart';

@Injectable(as: IAuthLocalDataSource)
class AuthLocalDataSource extends IAuthLocalDataSource {
  final _usersBox = 'users_box';
  final _usersKey = 'users';

  @override
  Future<void> signInWithCridentials({@required UserModel userModel}) async {
    final usersBox = await Hive.openBox(_usersBox);
    return usersBox.put(_usersKey, userModel);
  }
}

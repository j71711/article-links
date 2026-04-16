import 'package:injectable/injectable.dart';
import 'package:project/core/common/user_model.dart';


@lazySingleton
class UserService {
  UserModel? _user;

  set setUser(UserModel user) {
    _user = user;
  }

  UserModel? get getUser {
    return _user;
  }

  void signOut() {
    _user = null;
  }
}

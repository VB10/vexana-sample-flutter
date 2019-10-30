import 'dart:async';

import 'package:vexana/core/model/user.dart';

class LoginService {
  StreamController<User> _user = StreamController<User>();

  Stream<User> get user => _user.stream;

  void setUser() {
    var newUser = User("veli");
    _user.add(newUser);
  }
}

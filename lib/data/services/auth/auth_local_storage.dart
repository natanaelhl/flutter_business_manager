import 'dart:convert';

import 'package:flutter_application_1/data/services/local_storage.dart';
import 'package:flutter_application_1/domain/entities/user_entity.dart';
import 'package:result_dart/result_dart.dart';

const _userKey = '_userKey';

class AuthLocalStorage {
  final LocalStorage _localStorage;

  AuthLocalStorage(this._localStorage);

  AsyncResult<LoggedUser> getUser() {
    return _localStorage
        .getData(_userKey) //
        .map((json) => LoggedUser.fromJson(jsonDecode(json)));
  }

  AsyncResult<LoggedUser> saveUser(LoggedUser user) {
    return _localStorage
        .saveData(_userKey, jsonEncode(user.toJson()))
        .pure(user);
  }

  AsyncResult<Unit> removeUser() {
    return _localStorage.removeData(_userKey);
  }
}

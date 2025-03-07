import 'dart:async';

import 'package:flutter_application_1/data/repositories/auth/auth_repository.dart';
import 'package:flutter_application_1/data/services/auth/auth_client_http.dart';
import 'package:flutter_application_1/data/services/auth/auth_local_storage.dart';
import 'package:flutter_application_1/domain/dtos/credentials.dart';
import 'package:flutter_application_1/domain/entities/user_entity.dart';
import 'package:flutter_application_1/domain/validators/credentials_validator.dart';
import 'package:flutter_application_1/utils/validation/lucid_validator_extension.dart';
import 'package:result_dart/result_dart.dart';

class RemoteAuthRepository implements AuthRepository {
  final AuthLocalStorage _authLocalStorage;
  final AuthClientHttp _authClientHttp;
  final _streamController = StreamController<User>.broadcast();
  

  RemoteAuthRepository(this._authLocalStorage, this._authClientHttp);

  @override
  AsyncResult<LoggedUser> getUser() {
    return _authLocalStorage.getUser();
  }

  @override
  AsyncResult<LoggedUser> login(Credentials credentials) {
    final validator = CredentialsValidator();

    return validator
        .validateResult(credentials)
        .flatMap(_authClientHttp.login)
        .flatMap(_authLocalStorage.saveUser)
        .onSuccess(_streamController.add);
  }

  @override
  AsyncResult<Unit> logout() {
    return _authLocalStorage
        .removeUser()
        .onSuccess((_) => _streamController.add(const NotLoggedUser()));
  }


  @override
  Stream<User> userObserver() {
    return _streamController.stream;
  }

  @override
  void dispose() {
    _streamController.close();
  }
}

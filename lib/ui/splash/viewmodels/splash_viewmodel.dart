import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/repositories/auth/auth_repository.dart';
import 'package:flutter_application_1/domain/entities/user_entity.dart';

class SplashViewmodel extends ChangeNotifier {
  final AuthRepository _authRepository;

  User _user = const NotLoggedUser();
  User get user => _user;

 SplashViewmodel(this._authRepository) {
    _authRepository.userObserver().listen((user) {
      _user = user;
      notifyListeners(); 
    });
  }

 
}

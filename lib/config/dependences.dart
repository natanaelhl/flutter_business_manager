import 'package:auto_injector/auto_injector.dart';
import 'package:dio/dio.dart';
import 'package:flutter_application_1/data/repositories/auth/auth_repository.dart';
import 'package:flutter_application_1/data/repositories/auth/remote_auth_repository.dart';
import 'package:flutter_application_1/data/services/auth/auth_client_http.dart';
import 'package:flutter_application_1/data/services/auth/auth_local_storage.dart';
import 'package:flutter_application_1/data/services/client_http.dart';
import 'package:flutter_application_1/data/services/local_storage.dart';
import 'package:flutter_application_1/ui/auth/viewmodels/login_viewmodel.dart';
import 'package:flutter_application_1/ui/splash/viewmodels/splash_viewmodel.dart';

final injector = AutoInjector();

void setupDependencies(){
  injector.addInstance(Dio());
  injector.addSingleton(ClientHttp.new);
  injector.addSingleton(LocalStorage.new);

  //splash
  injector.addSingleton(SplashViewmodel.new);

  //auth
  injector.addSingleton<AuthRepository>(RemoteAuthRepository.new);
  injector.addSingleton(AuthClientHttp.new);
  injector.addSingleton(AuthLocalStorage.new);
  injector.addSingleton(LoginViewmodel.new);

  injector.commit();
}
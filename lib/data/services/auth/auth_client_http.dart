import 'package:flutter_application_1/data/services/client_http.dart';
import 'package:flutter_application_1/domain/dtos/credentials.dart';
import 'package:flutter_application_1/domain/entities/user_entity.dart';
import 'package:result_dart/result_dart.dart';

class AuthClientHttp {
  final ClientHttp _clientHttp;
  AuthClientHttp(this._clientHttp);

  AsyncResult<LoggedUser> login(Credentials credentials) async {
    // final response = await _clientHttp.post('/login', {
    // 'email': credentials.email,
    // 'password': credentials.password,
    // });

    // return response.map((response) {
    //  return LoggedUser.fromJson(response.data);
    // });

    await Future.delayed(const Duration(seconds: 2));

    return const Success(LoggedUser(
      id: 1,
      name: "Natanael",
      email: "sasa@hotmail.com",
      cnpj: "12344",
      phone: "1121",
      token: "sadfdsf",
      refreshToken: "dsdsdsds",
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/dependences.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/ui/auth/login_viewmodel.dart';
import 'package:result_command/result_command.dart';
import 'package:routefly/routefly.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final viewmodel = injector.get<LoginViewmodel>();

  @override
  void initState() {
    super.initState();
    viewmodel.loginCommand.addListener(_listenable);
  }

  void _listenable() {
    if (viewmodel.loginCommand.isSuccess) {
      Routefly.navigate(routePaths.home);
    } else if (viewmodel.loginCommand.isFailure) {
      final error = viewmodel.loginCommand.value as FailureCommand;
      final snackBar = SnackBar(
        content: Text(error.error.toString()),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  void dispose() {
    viewmodel.loginCommand.removeListener(_listenable);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const FlutterLogo(
                size: 100,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Email', border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Password', border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

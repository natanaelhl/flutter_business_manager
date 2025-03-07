import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/dependences.dart';
import 'package:flutter_application_1/domain/entities/user_entity.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/ui/splash/viewmodels/splash_viewmodel.dart';
import 'package:routefly/routefly.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final splashViewmodel = injector.get<SplashViewmodel>();

  @override
  void initState() {  
    super.initState();
    splashViewmodel.addListener(onAuthChanged);
    onAuthChanged();
  }

  @override
  void dispose() {
    splashViewmodel.removeListener(onAuthChanged);
    splashViewmodel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  void onAuthChanged(){
    if (splashViewmodel.user is LoggedUser){
      Routefly.navigate(routePaths.home);
    } else {
      Routefly.navigate(routePaths.auth.login);
    }
  }
}

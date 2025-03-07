import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/dependences.dart';
import 'package:flutter_application_1/domain/entities/user_entity.dart';
import 'package:flutter_application_1/ui/splash/viewmodels/splash_viewmodel.dart';
import 'package:routefly/routefly.dart';

import 'main.route.dart';
part 'main.g.dart';

void main() {
  setupDependencies();

  runApp(const MyApp());
}

@Main('lib/ui')
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final splashViewmodel = injector.get<SplashViewmodel>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        routerConfig: Routefly.routerConfig(
      routes: routes,
      initialPath: routePaths.splash,
    ));
  }
}

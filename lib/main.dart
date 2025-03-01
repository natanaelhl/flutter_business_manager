import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/dependences.dart';
import 'package:routefly/routefly.dart';

import 'main.route.dart';
part 'main.g.dart';

void main() {
  setupDependencies();

  runApp(const MyApp());
}

@Main('lib/ui')
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        routerConfig: Routefly.routerConfig(
      routes: routes,
      initialPath: routePaths.auth.login
    ));
  }
}

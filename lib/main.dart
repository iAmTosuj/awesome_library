import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:library_web/router/router_settings.dart';

void main() {
  runApp(AwesomeLibrary());
}

class AwesomeLibrary extends StatelessWidget {
  final GoRouter _goRouter = RouterSettings.router;

  AwesomeLibrary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _goRouter.routeInformationParser,
      routerDelegate: _goRouter.routerDelegate,
      title: 'Потрясающая библиотека',
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:library_web/app/common/injector/d_i.dart';
import 'package:library_web/app/common/injector/inject_dependency.dart';
import 'package:library_web/app/common/router/router_settings.dart';
import 'package:library_web/app/feature/home_page/state/MainController.dart';
import 'package:provider/provider.dart';

void main() {
  // TODO: разобраться почему main вызывается на каждый hot reload
  injectDependency();
  runApp(AwesomeLibrary());
}

class AwesomeLibrary extends StatelessWidget {
  final GoRouter _goRouter = RouterSettings.router;

  AwesomeLibrary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DI.find<MainPageNotifier>())
      ],
      child: MaterialApp.router(
        routeInformationParser: _goRouter.routeInformationParser,
        routerDelegate: _goRouter.routerDelegate,
        title: 'Потрясающая библиотека',
      ),
    );
  }
}

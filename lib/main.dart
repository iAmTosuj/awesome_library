import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:library_web/resources/res_colors.dart';
import 'package:library_web/router/router_settings.dart';
import 'package:library_web/state/main/MainController.dart';
import 'package:provider/provider.dart';

void main() {
  // TODO: разобраться почему main вызывается на каждый hot reload

  final getIt = GetIt.instance;

  getIt.registerLazySingleton(() => MainPageNotifier());

  runApp(AwesomeLibrary());
}

class AwesomeLibrary extends StatelessWidget {
  final GoRouter _goRouter = RouterSettings.router;

  AwesomeLibrary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) => GetIt.instance.get<MainPageNotifier>())
      ],
      child: MaterialApp.router(
        routeInformationParser: _goRouter.routeInformationParser,
        routerDelegate: _goRouter.routerDelegate,
        theme: ThemeData(
          textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme),
          appBarTheme: AppBarTheme(
            backgroundColor: ResColors.white,
            titleTextStyle: Theme.of(context).textTheme.headline5?.copyWith(
                  color: ResColors.text,
                ),
          ),
        ),
        title: 'Потрясающая библиотека',
      ),
    );
  }
}

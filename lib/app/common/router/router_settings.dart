import 'package:go_router/go_router.dart';
import 'package:library_web/app/common/injector/d_i.dart';
import 'package:library_web/app/common/router/app_state.dart';
import 'package:library_web/app/common/router/route_info.dart';
import 'package:library_web/app/common/widgets/layout.dart';
import 'package:library_web/app/feature/book_detail/pages/book_detail_page.dart';
import 'package:library_web/app/feature/home_page/page/main_page.dart';
import 'package:library_web/app/feature/login/page/login_page.dart';

class RouterSettings {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: RouteInfo.login.path,
        name: RouteInfo.login.name,
        builder: (context, state) {
          return LoginPage();
        },
      ),
      GoRoute(
          path: RouteInfo.main.path,
          name: RouteInfo.main.name,
          builder: (context, state) => MainPage(),
          routes: [
            GoRoute(
              path: RouteInfo.bookDetail.path,
              name: RouteInfo.bookDetail.name,
              builder: (context, state) {
                final int id = int.parse(state.params['id']!);

                return BookDetailPage(
                  id: id,
                );
              },
            ),
          ]),
    ],
    navigatorBuilder: (context, state, child) {
      return Layout(child: child);
    },
    refreshListenable: DI.find<AppState>(),
    redirect: (state) {
      if (!DI.find<AppState>().isAuth &&
          state.location != RouteInfo.login.path) {
        return RouteInfo.login.path;
      }

      if (DI.find<AppState>().isAuth &&
          state.location == RouteInfo.login.path) {
        return RouteInfo.main.path;
      }

      return null;
    },
    debugLogDiagnostics: true,
  );
}

import 'package:go_router/go_router.dart';
import 'package:library_web/app/common/router/route_info.dart';
import 'package:library_web/app/feature/book_detail/pages/book_detail_page.dart';
import 'package:library_web/app/feature/home_page/page/main_page.dart';

class RouterSettings {
  static final router = GoRouter(
    routes: [
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
  );
}

import 'package:go_router/go_router.dart';
import 'package:library_web/router/route_info.dart';
import 'package:library_web/ui/book_detail/book_detail_page.dart';
import 'package:library_web/ui/main/main_page.dart';

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
              builder: (context, state) => const BookDetailPage(),
            ),
          ]),
    ],
  );
}

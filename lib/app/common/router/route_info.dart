class RouteInfo {
  final String name;
  final String path;
  final Map<String, String> queryParams;

  static final RouteInfo main =
      RouteInfo._(name: 'main', path: '/', queryParams: {});

  static final RouteInfo bookDetail =
      RouteInfo._(name: 'bookDetail', path: 'book/:id', queryParams: {});

  static final RouteInfo login =
      RouteInfo._(name: 'login', path: '/login', queryParams: {});

  RouteInfo._({
    required this.name,
    required this.path,
    required this.queryParams,
  });
}

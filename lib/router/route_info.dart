class RouteInfo {
  final String name;
  final String path;
  final Map<String, String> queryParams;

  static final RouteInfo main =
      RouteInfo._(name: 'main', path: '/', queryParams: {});

  RouteInfo._({
    required this.name,
    required this.path,
    required this.queryParams,
  });
}

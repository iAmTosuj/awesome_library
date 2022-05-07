import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:library_web/app/common/injector/d_i.dart';
import 'package:library_web/app/common/router/app_state.dart';

abstract class BaseNetworkClient {
  final Dio client;

  BaseNetworkClient(this.client) {
    client.interceptors.add(CookieManager(CookieJar()));
    client.interceptors.add(InterceptorsWrapper(onError: (DioError e, handler) {
      if (e.response?.statusCode == 403) {
        DI.find<AppState>().setAuthState(false);
      }

      return handler.next(e); //continue
    }));
  }
}

import 'dart:html';

import 'package:dio/dio.dart';
import 'package:library_web/app/common/injector/d_i.dart';
import 'package:library_web/app/common/router/app_state.dart';

abstract class BaseNetworkClient {
  final Dio client;

  BaseNetworkClient(this.client) {
    client.interceptors.add(InterceptorsWrapper(
      onRequest: (option, handler) {
        final cookie = document.cookie!;

        final entity = cookie.split("; ").map((item) {
          final split = item.split("=");
          return MapEntry(split[0], split[1]);
        });

        final cookieMap = Map.fromEntries(entity);

        option.headers['X-CSRFToken'] = cookieMap['csrftoken'];

        handler.next(option);
      },
      onError: (DioError e, handler) {
        if (e.response?.statusCode == 403) {
          DI.find<AppState>().setAuthState(false);
        }

        return handler.next(e); //continue
      },
    ));
  }
}

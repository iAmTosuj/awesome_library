import 'package:flutter/material.dart';
import 'package:library_web/app/common/router/router_settings.dart';

void showSnackBar({required String content}) {
  final scaffoldMessengerState = RouterSettings.scaffoldKey.currentState;
  scaffoldMessengerState?.removeCurrentSnackBar();

  scaffoldMessengerState?.showSnackBar(SnackBar(content: Text(content)));
}

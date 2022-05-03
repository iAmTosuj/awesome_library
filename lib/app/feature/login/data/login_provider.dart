import 'package:flutter/cupertino.dart';
import 'package:library_web/app/common/network_client/main_network_client.dart';
import 'package:library_web/app/common/router/app_state.dart';

class LoginProvider extends ChangeNotifier {
  final MainNetworkClient _mainNetworkClient;
  final AppState _appState;

  LoginProvider({
    required MainNetworkClient mainNetworkClient,
    required AppState appState,
  })  : _mainNetworkClient = mainNetworkClient,
        _appState = appState;

  Future<void> login({required String login, required String password}) async {
    // final tokenResponse = await _mainNetworkClient.clientt.get(
    //   'api/auth/',
    // );
    print('-------');
    await _mainNetworkClient.client.get(
      'api/auth/',
    );
    print('-------');
    await _mainNetworkClient.client.post(
      'api/auth/login/',
      data: {'username': login, 'password': password},
    );
    print('-------');
    _appState.setAuthState(true);
  }
}

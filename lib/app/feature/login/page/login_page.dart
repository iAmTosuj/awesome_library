import 'package:flutter/material.dart';
import 'package:library_web/app/common/injector/d_i.dart';
import 'package:library_web/app/common/network_client/main_network_client.dart';
import 'package:library_web/app/common/resources/res_button_style.dart';
import 'package:library_web/app/common/router/app_state.dart';
import 'package:library_web/app/common/widgets/action_button.dart';
import 'package:library_web/app/feature/login/data/login_provider.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController loginController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => LoginProvider(
          mainNetworkClient: DI.find<MainNetworkClient>(),
          appState: DI.find<AppState>()),
      child: Scaffold(
        body: Center(
          child: SizedBox(
            width: 400,
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                TextField(
                  controller: loginController,
                  decoration: const InputDecoration(hintText: 'Логин'),
                ),
                const SizedBox(
                  height: 24,
                ),
                TextField(
                  controller: passwordController,
                  decoration: const InputDecoration(hintText: 'Пароль'),
                ),
                const SizedBox(
                  height: 24,
                ),
                Builder(builder: (context) {
                  return ActionButton(
                      style: ResButtonStyle.primary,
                      onTap: () =>
                          Provider.of<LoginProvider>(context, listen: false)
                              .login(
                                  login: loginController.value.text,
                                  password: passwordController.value.text),
                      text: 'Чык чырык');
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:library_web/core/network_client/main_network_client.dart';
import 'package:library_web/state/main/MainController.dart';

import 'd_i.dart';

injectDependency() async {
  DI.put(MainNetworkClient());
  DI.put(MainPageNotifier());
}

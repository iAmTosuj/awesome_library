import 'package:library_web/app/common/network_client/main_network_client.dart';
import 'package:library_web/app/feature/home_page/state/MainController.dart';

import 'd_i.dart';

injectDependency() async {
  DI.put(MainNetworkClient());
  DI.put(MainPageNotifier());
}

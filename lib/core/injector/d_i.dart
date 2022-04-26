import 'package:get_it/get_it.dart';

class DI {
  static put<T extends Object>(T params) {
    GetIt.instance.registerLazySingleton(() => params);
  }

  static T find<T extends Object>() {
    return GetIt.instance<T>();
  }
}

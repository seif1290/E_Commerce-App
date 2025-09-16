import 'package:e_commerce/core/di/init_auth.dart';
import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.instance;

void setup() {
  //   locator.registerLazySingleton();

  // Call per feature initialization

  initAuth();
}

import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:pile_of_fame/core/network/network_info_internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/network/network_info.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Core
  sl.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoInternetConnectionChecker(
      connectionChecker: InternetConnectionChecker(),
    ),
  );

  // External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  //sl.registerLazySingleton(() => http.Client());
  //sl.registerLazySingleton(() => DataConnectionChecker());
}

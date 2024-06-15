import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:pile_of_fame/core/network/network_info_internet_connection_checker.dart';
import 'package:pile_of_fame/features/owned_miniatures/data/data_sources/miniature_local_datasource.dart';
import 'package:pile_of_fame/features/owned_miniatures/data/data_sources/miniature_remote_datasource.dart';
import 'package:pile_of_fame/features/owned_miniatures/data/repositories/miniature_repository_impl.dart';
import 'package:pile_of_fame/features/owned_miniatures/domain/repositories/miniature_repository.dart';
import 'package:pile_of_fame/features/owned_miniatures/domain/use_cases/get_miniature_info_list.dart';
import 'package:pile_of_fame/features/owned_miniatures/presentation/bloc/owned_miniatures_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/network/network_info.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Bloc
  sl.registerFactory(
    () => OwnedMiniaturesBloc(),
  );

  // Use cases
  sl.registerLazySingleton(() => GetMiniatureInfoList(miniatureRepository: sl()));

  // Repository
  sl.registerLazySingleton<MiniatureRepository>(
    () => MiniatureRepositoryImpl(
      miniatureLocalDatasource: sl(),
      miniatureRemoteDatasource: sl(),
      networkInfo: sl(),
    ),
  );

  // Data sources
  sl.registerLazySingleton<MiniatureLocalDatasource>(
    () => MiniatureLocalDatasourceImpl(),
  );

  sl.registerLazySingleton<MiniatureRemoteDatasource>(
    () => MiniatureRemoteDatasourceImpl(),
  );

  //! Core
  sl.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoInternetConnectionChecker(
      connectionChecker: InternetConnectionChecker(),
    ),
  );

  //! External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  //sl.registerLazySingleton(() => http.Client());
  //sl.registerLazySingleton(() => DataConnectionChecker());
}

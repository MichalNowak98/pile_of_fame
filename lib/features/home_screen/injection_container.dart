import 'package:pile_of_fame/features/home_screen/presentation/bloc/home_bloc.dart';
import 'package:pile_of_fame/injection_container.dart';

Future<void> init() async {
  // Bloc
  sl.registerFactory(
    () => HomeBloc(),
  );

  // Use cases

  // Repository
  // sl.registerLazySingleton<MiniatureRepository>(
  //   () => MiniatureRepositoryImpl(
  //     miniatureLocalDatasource: sl(),
  //     miniatureRemoteDatasource: sl(),
  //     networkInfo: sl(),
  //   ),
  // );

  // Data sources
  // sl.registerLazySingleton<MiniatureLocalDatasource>(
  //   () => MiniatureLocalDatasourceImpl(),
  // );
  //
  // sl.registerLazySingleton<MiniatureRemoteDatasource>(
  //   () => MiniatureRemoteDatasourceImpl(),
  // );
}

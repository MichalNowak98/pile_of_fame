import 'package:pile_of_fame/features/owned_miniatures/presentation/bloc/owned_miniatures_bloc.dart';
import 'package:pile_of_fame/features/owned_miniatures/data/data_sources/miniature_local_datasource.dart';
import 'package:pile_of_fame/features/owned_miniatures/data/data_sources/miniature_remote_datasource.dart';
import 'package:pile_of_fame/features/owned_miniatures/data/repositories/miniature_repository_impl.dart';
import 'package:pile_of_fame/features/owned_miniatures/domain/repositories/miniature_repository.dart';
import 'package:pile_of_fame/features/owned_miniatures/domain/use_cases/get_miniature_info_list.dart';
import 'package:pile_of_fame/injection_container.dart';

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
}

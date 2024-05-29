import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pile_of_fame/core/network/network_info_internet_connection_checker.dart';
import 'package:pile_of_fame/features/owned_miniatures/data/data_sources/miniature_local_datasource.dart';
import 'package:pile_of_fame/features/owned_miniatures/data/data_sources/miniature_remote_datasource.dart';
import 'package:pile_of_fame/features/owned_miniatures/data/repositories/miniature_repository_impl.dart';
import 'package:pile_of_fame/features/owned_miniatures/domain/repositories/miniature_repository.dart';
import 'package:pile_of_fame/injection_container.dart';

class RepositoryProviders extends StatelessWidget {
  final Widget child;

  const RepositoryProviders({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<MiniatureRepository>(create: (context) => MiniatureRepositoryImpl(
          miniatureLocalDatasource: MiniatureLocalDatasourceImpl(),
          miniatureRemoteDatasource: MiniatureRemoteDatasourceImpl(),
          networkInfo: sl.get<NetworkInfoInternetConnectionChecker>(),
        ),
        ),
      ],
      child: child,
    );
  }
}

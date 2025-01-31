import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:pile_of_fame/core/error/exceptions.dart';
import 'package:pile_of_fame/core/error/failure.dart';
import 'package:pile_of_fame/core/error/failures.dart';
import 'package:pile_of_fame/core/network/network_info.dart';
import 'package:pile_of_fame/features/owned_miniatures/data/data_sources/miniature_local_datasource.dart';
import 'package:pile_of_fame/features/owned_miniatures/data/data_sources/miniature_remote_datasource.dart';
import 'package:pile_of_fame/features/owned_miniatures/domain/entities/miniature_info_list.dart';
import 'package:pile_of_fame/features/owned_miniatures/domain/entities/params/get_miniature_info_list_params.dart';
import 'package:pile_of_fame/features/owned_miniatures/domain/repositories/miniature_repository.dart';

@Singleton(as: MiniatureRepository)
class MiniatureRepositoryImpl implements MiniatureRepository {
  final MiniatureLocalDatasource miniatureLocalDatasource;
  final MiniatureRemoteDatasource miniatureRemoteDatasource;
  final NetworkInfo networkInfo;

  MiniatureRepositoryImpl({
    required this.miniatureLocalDatasource,
    required this.miniatureRemoteDatasource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, MiniatureInfoList>> getMiniatureInfoList(
    GetMiniatureInfoListParams params,
  ) async {
    if (await networkInfo.isConnected) {
      try {
        final result = await miniatureRemoteDatasource.getMiniatureInfoList(params);
        return Right(result);
      } on GetMiniatureInfoListException {
        return const Left(GetMiniatureInfoListFailure(errorMessage: ''));
      }
    } else {
      try {
        final result = await miniatureLocalDatasource.getMiniatureInfoList(params);
        return Right(result);
      } on GetMiniatureInfoListException {
        return const Left(GetMiniatureInfoListFailure(errorMessage: ''));
      }
    }
  }
}

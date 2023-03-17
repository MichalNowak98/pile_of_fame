import 'package:dartz/dartz.dart';
import 'package:pile_of_fame/core/error/failure.dart';
import 'package:pile_of_fame/features/owned_miniatures/domain/entities/miniature_info_list.dart';
import 'package:pile_of_fame/features/owned_miniatures/domain/entities/params/get_miniature_info_list_params.dart';

abstract class MiniatureRepository {
  Future<Either<Failure, MiniatureInfoList>> getMiniatureInfoList(GetMiniatureInfoListParams params);
}
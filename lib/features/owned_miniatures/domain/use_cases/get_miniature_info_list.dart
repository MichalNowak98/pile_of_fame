import 'package:dartz/dartz.dart';
import 'package:pile_of_fame/core/error/failure.dart';
import 'package:pile_of_fame/core/usecase/usecase.dart';
import 'package:pile_of_fame/features/owned_miniatures/domain/entities/miniature_info_list.dart';
import 'package:pile_of_fame/features/owned_miniatures/domain/entities/params/get_miniature_info_list_params.dart';
import 'package:pile_of_fame/features/owned_miniatures/domain/repositories/miniature_repository.dart';

class GetMiniatureInfoList implements UseCase<MiniatureInfoList, GetMiniatureInfoListParams>{
  final MiniatureRepository miniatureRepository;

  GetMiniatureInfoList({required this.miniatureRepository});

  @override
  Future<Either<Failure, MiniatureInfoList>> call(GetMiniatureInfoListParams params) {
    return miniatureRepository.getMiniatureInfoList(params);
  }
}
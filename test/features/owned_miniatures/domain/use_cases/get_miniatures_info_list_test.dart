import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pile_of_fame/features/owned_miniatures/data/models/miniature_info_list_model.dart';
import 'package:pile_of_fame/features/owned_miniatures/data/models/miniature_info_model.dart';
import 'package:pile_of_fame/features/owned_miniatures/data/models/params/get_miniature_info_list_params_model.dart';
import 'package:pile_of_fame/features/owned_miniatures/domain/repositories/miniature_repository.dart';
import 'package:pile_of_fame/features/owned_miniatures/domain/use_cases/get_miniature_info_list.dart';

class MockMiniatureInfoRepository extends Mock implements MiniatureRepository {}

void main() {
  late GetMiniatureInfoList usecase;
  late MockMiniatureInfoRepository mockMiniatureInfoRepository;

  setUp(() {
    mockMiniatureInfoRepository = MockMiniatureInfoRepository();
    usecase = GetMiniatureInfoList(mockMiniatureInfoRepository);
  });

  final miniatureInfo = MiniatureInfoModel(
    faction: "faction",
    finishedQuantity: 1,
    name: "name",
    overallQuantity: 3,
    type: "type",
    universe: "universe",
  );
  final miniatureInfoList = MiniatureInfoListModel(data: [miniatureInfo]);
  final miniatureInfoListParams = GetMiniatureInfoListParamsModel();
  test(
    'should get list of miniature info',
    () async {
      when(() => mockMiniatureInfoRepository.getMiniatureInfoList(miniatureInfoListParams))
          .thenAnswer((_) async => Right(miniatureInfoList));

      final result = await usecase(miniatureInfoListParams);
      expect(result, Right(miniatureInfoList));
      verify(() => mockMiniatureInfoRepository.getMiniatureInfoList(miniatureInfoListParams));
      verifyNoMoreInteractions(mockMiniatureInfoRepository);
    },
  );
}

import 'package:pile_of_fame/core/fixtures/owned_miniatures/miniature_info_list_fixture.dart';
import 'package:pile_of_fame/features/owned_miniatures/domain/entities/miniature_info_list.dart';
import 'package:pile_of_fame/features/owned_miniatures/domain/entities/params/get_miniature_info_list_params.dart';

abstract class MiniatureLocalDatasource {
  Future<MiniatureInfoList> getMiniatureInfoList(
      GetMiniatureInfoListParams params);
}

class MiniatureLocalDatasourceImpl implements MiniatureLocalDatasource {

  @override
  Future<MiniatureInfoList> getMiniatureInfoList(
      GetMiniatureInfoListParams params) {

    return getMiniatureInfoListFixture();
  }
}

class MockMiniatureLocalDatasourceImpl implements MiniatureLocalDatasource {
  @override
  Future<MiniatureInfoList> getMiniatureInfoList(
      GetMiniatureInfoListParams params) {
    return getMiniatureInfoListFixture();
  }
}

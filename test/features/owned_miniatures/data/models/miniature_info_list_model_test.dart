import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:pile_of_fame/features/owned_miniatures/data/models/miniature_info_list_model.dart';
import 'package:pile_of_fame/features/owned_miniatures/data/models/miniature_info_model.dart';
import 'package:pile_of_fame/features/owned_miniatures/domain/entities/miniature_info_list.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final miniatureList = MiniatureInfoListModel(data: [
    MiniatureInfoModel(
      faction: "faction1",
      finishedQuantity: 8,
      name: "model1",
      overallQuantity: 20,
      type: "infantry",
      universe: "universe",
    ),
    MiniatureInfoModel(
      faction: "faction2",
      finishedQuantity: 0,
      name: "model2",
      overallQuantity: 6,
      type: "cavalry",
      universe: "universe",
    ),
  ]);

  test(
    'should be a subclass of MiniatureInfo entity',
    () async {
      expect(miniatureList, isA<MiniatureInfoList>());
    },
  );

  group('from Json', () {
    test('should return a valid model', () {
      final Map<String, dynamic> jsonMap =
          jsonDecode(fixture("model_info_list.json"));
      final result = MiniatureInfoListModel.fromJson(jsonMap);
      expect(result, miniatureList);
    });
  });
}

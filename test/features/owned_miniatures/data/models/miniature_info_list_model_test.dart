import 'package:flutter_test/flutter_test.dart';
import 'package:pile_of_fame/features/owned_miniatures/data/models/miniature_info_list_model.dart';
import 'package:pile_of_fame/features/owned_miniatures/data/models/miniature_info_model.dart';
import 'package:pile_of_fame/features/owned_miniatures/domain/entities/miniature_info_list.dart';

void main() {
  final miniatureList = MiniatureInfoListModel(
    data: [
      MiniatureInfoModel(
        name: "model1",
        universe: "universe",
        faction: "faction1",
        type: "infantry",
        overallQuantity: 20,
        finishedQuantity: 8,
      ),
      MiniatureInfoModel(
        name: "model2",
        universe: "universe",
        faction: "faction2",
        type: "cavalry",
        overallQuantity: 6,
        finishedQuantity: 0,
      ),
    ],
  );

  test(
    'should be a subclass of MiniatureInfo entity',
    () async {
      expect(miniatureList, isA<MiniatureInfoList>());
    },
  );
}

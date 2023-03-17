import 'package:pile_of_fame/features/owned_miniatures/data/models/miniature_info_list_model.dart';
import 'package:pile_of_fame/features/owned_miniatures/data/models/miniature_info_model.dart';
import 'package:pile_of_fame/features/owned_miniatures/domain/entities/miniature_info_list.dart';

Future<MiniatureInfoList> getMiniatureInfoListFixture() {
  return Future.value(MiniatureInfoListModel(data: [
    MiniatureInfoModel(
      faction: "Mordor",
      finishedQuantity: 4,
      name: "Morannon orc",
      overallQuantity: 10,
      type: "Infantry",
      universe: "Lord of the Rings",
    ),
    MiniatureInfoModel(
      faction: "Gondor",
      finishedQuantity: 8,
      name: "Minas Tirith Warrior",
      overallQuantity: 10,
      type: "Infantry",
      universe: "Lord of the Rings",
    ),
    MiniatureInfoModel(
      faction: "Mordor",
      finishedQuantity: 1,
      name: "Mordor Troll",
      overallQuantity: 1,
      type: "Monster",
      universe: "Lord of the Rings",
    ),
    MiniatureInfoModel(
      faction: "Neutral",
      finishedQuantity: 1,
      name: "Geralt",
      overallQuantity: 1,
      type: "Infantry",
      universe: "Witcher",
    ),
    MiniatureInfoModel(
      faction: "Neutral",
      finishedQuantity: 1,
      name: "Ciri",
      overallQuantity: 1,
      type: "Infantry",
      universe: "Witcher",
    ),
    MiniatureInfoModel(
      faction: "Mordor",
      finishedQuantity: 0,
      name: "Witch King on fell beast",
      overallQuantity: 1,
      type: "Monster",
      universe: "Loooong naaaaame eg. Lord of the Rings",
    ),
    MiniatureInfoModel(
      faction: "Mordor",
      finishedQuantity: 4,
      name: "Morannon orc",
      overallQuantity: 10,
      type: "Infantry",
      universe: "Lord of the Rings",
    ),
    MiniatureInfoModel(
      faction: "Gondor",
      finishedQuantity: 8,
      name: "Minas Tirith Warrior",
      overallQuantity: 10,
      type: "Infantry",
      universe: "Lord of the Rings",
    ),
  ]));
}

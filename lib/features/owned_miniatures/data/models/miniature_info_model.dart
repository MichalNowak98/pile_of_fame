import 'package:pile_of_fame/features/owned_miniatures/domain/entities/miniature_info.dart';
import 'package:hive/hive.dart';

part 'miniature_info_model.g.dart';

@HiveType(typeId: 1)
class MiniatureInfoModel extends MiniatureInfo {
  MiniatureInfoModel({
    required this.faction,
    required this.finishedQuantity,
    required this.name,
    required this.overallQuantity,
    required this.type,
    required this.universe,
  });

  @HiveField(0)
  @override
  final String universe;

  @HiveField(1)
  @override
  final String faction;

  @HiveField(2)
  @override
  final String name;

  @HiveField(3)
  @override
  final String type;

  @HiveField(4)
  @override
  final int finishedQuantity;

  @HiveField(5)
  @override
  final int overallQuantity;

  @override
  List<Object> get props => [
        faction,
        finishedQuantity,
        name,
        overallQuantity,
        type,
        universe,
      ];


  factory MiniatureInfoModel.fromJson(Map<String, dynamic> json) {
    return MiniatureInfoModel(
      faction: json['faction'],
      finishedQuantity: json['finished-number'],
      name: json['name'],
      overallQuantity: json['overall-quantity'],
      type: json['type'],
      universe: json['universe'],
    );
  }

  @override
  // TODO: implement stringify
  bool? get stringify => throw UnimplementedError();
}

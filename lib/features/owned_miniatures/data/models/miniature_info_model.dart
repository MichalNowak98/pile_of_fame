import 'package:pile_of_fame/features/owned_miniatures/domain/entities/miniature_info.dart';

class MiniatureInfoModel extends MiniatureInfo {
  @override
  final String faction;

  @override
  final int finishedQuantity;

  @override
  final String name;

  @override
  final int overallQuantity;

  @override
  final String type;

  @override
  final String universe;

  @override
  List<Object> get props => [
        faction,
        finishedQuantity,
        name,
        overallQuantity,
        type,
        universe,
      ];

  MiniatureInfoModel({
    required this.faction,
    required this.finishedQuantity,
    required this.name,
    required this.overallQuantity,
    required this.type,
    required this.universe,
  });

  factory MiniatureInfoModel.fromJson(Map<String, dynamic> json) {
    return MiniatureInfoModel(
      faction: json['faction'],
      finishedQuantity: json['finishedNumber'],
      name: json['name'],
      overallQuantity: json['quantity'],
      type: json['type'],
      universe: json['universe'],
    );
  }
}

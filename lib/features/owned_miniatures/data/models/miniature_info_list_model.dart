import 'package:pile_of_fame/features/owned_miniatures/data/models/miniature_info_model.dart';
import 'package:pile_of_fame/features/owned_miniatures/domain/entities/miniature_info.dart';
import 'package:pile_of_fame/features/owned_miniatures/domain/entities/miniature_info_list.dart';

class MiniatureInfoListModel extends MiniatureInfoList {
  @override
  List<MiniatureInfo> data;

  @override
  List<Object?> get props => [data];

  MiniatureInfoListModel({
    required this.data,
  });

  factory MiniatureInfoListModel.fromJson(Map<String, dynamic> json) {
    final map = json['data'].map<MiniatureInfo>((data) => MiniatureInfoModel.fromJson(data));
    return MiniatureInfoListModel(data: map.toList());
  }
}

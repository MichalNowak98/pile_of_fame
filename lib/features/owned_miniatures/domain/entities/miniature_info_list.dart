import 'package:equatable/equatable.dart';
import 'package:pile_of_fame/features/owned_miniatures/domain/entities/miniature_info.dart';

abstract class MiniatureInfoList extends Equatable {
  List<MiniatureInfo> get data;
}
import 'package:equatable/equatable.dart';

abstract class MiniatureInfo extends Equatable {
  String get name;

  String get universe;

  String get faction;

  String get type;

  int get overallQuantity;

  int get finishedQuantity;
}

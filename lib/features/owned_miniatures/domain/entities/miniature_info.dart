import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

abstract class MiniatureInfo extends HiveObject implements Equatable {
  String get name;

  String get universe;

  String get faction;

  String get type;

  int get overallQuantity;

  int get finishedQuantity;
}

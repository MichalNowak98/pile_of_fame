import 'package:auto_route/auto_route.dart';

class CardButtonCategory {
  final String name;
  final PageRouteInfo<dynamic> nextScreenPath;

  CardButtonCategory({
    required this.name,
    required this.nextScreenPath,
  });
}
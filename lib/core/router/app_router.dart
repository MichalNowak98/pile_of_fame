import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pile_of_fame/features/owned_miniatures/presentation/pages/owned_miniatures_screen.dart';

import '../../features/home_screen/presentation/bloc/home_bloc.dart';
import '../../features/home_screen/presentation/screens/home_screen.dart';
import '../../features/owned_miniatures/presentation/bloc/owned_miniatures_bloc.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page, initial: true),
    AutoRoute(page: OwnedMiniaturesRoute.page),
  ];
}

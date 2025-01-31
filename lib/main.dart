import 'package:flutter/material.dart';
import 'package:pile_of_fame/core/router/app_router.dart';
import 'package:pile_of_fame/core/style/app_theme.dart';

import 'injectable.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    configureDependencies();
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      title: 'Pile of fame',
      theme: lightThemeData,
      darkTheme: darkThemeData,
    );
  }
}

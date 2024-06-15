import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pile_of_fame/core/style/app_theme.dart';
import 'package:pile_of_fame/features/home_screen/presentation/screens/home_screen.dart';
import 'package:pile_of_fame/features/owned_miniatures/presentation/pages/owned_miniatures_screen.dart';

import 'features/home_screen/injection_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    init();
    return GetMaterialApp(
      title: 'Pile of fame',
      theme: lightThemeData,
      darkTheme: darkThemeData,
      initialRoute: HomeScreen.path,
      getPages: [
        GetPage(name: HomeScreen.path, page: () => HomeScreen()),
        GetPage(name: OwnedMiniaturesScreen.path, page: () => const OwnedMiniaturesScreen()),
      ],
    );
  }
}

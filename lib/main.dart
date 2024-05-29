import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pile_of_fame/core/style/app_theme.dart';
import 'package:pile_of_fame/features/owned_miniatures/presentation/bloc/owned_miniatures_bloc.dart';
import 'package:pile_of_fame/features/owned_miniatures/presentation/pages/owned_miniatures_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   // init();
    return MaterialApp(
      title: 'Pile of fame',
      theme: lightThemeData,
      home: BlocProvider<OwnedMiniaturesBloc>(
        create: (context) {
          return OwnedMiniaturesBloc();
        },
        child: const OwnedMiniaturesScreen(),
      ),
    );
  }
}

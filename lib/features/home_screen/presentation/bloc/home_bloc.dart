import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:pile_of_fame/features/home_screen/data/models/card_button_category.dart';
import 'package:pile_of_fame/features/home_screen/presentation/screens/home_screen.dart';
import 'package:pile_of_fame/features/owned_miniatures/presentation/pages/owned_miniatures_screen.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  static final _categories = [
    CardButtonCategory(name: "Owned Miniatures", nextScreenPath: OwnedMiniaturesScreen.path),
    CardButtonCategory(name: "Placeholder 1", nextScreenPath: HomeScreen.path),
    CardButtonCategory(name: "Placeholder 2", nextScreenPath: HomeScreen.path),
    CardButtonCategory(name: "Placeholder 3", nextScreenPath: HomeScreen.path),
    CardButtonCategory(name: "Placeholder 4", nextScreenPath: HomeScreen.path),
  ];

  HomeBloc({
    HomeState? initialState,
  }) : super(
          initialState ?? HomeState(categories: _categories),
        );
}

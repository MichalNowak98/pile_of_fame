import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:pile_of_fame/core/router/app_router.dart';
import 'package:pile_of_fame/features/home_screen/data/models/card_button_category.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  static final _categories = [
    CardButtonCategory(name: "Owned Miniatures", nextScreenPath: OwnedMiniaturesRoute()),
    CardButtonCategory(name: "Placeholder 1", nextScreenPath: OwnedMiniaturesRoute()),
    CardButtonCategory(name: "Placeholder 2", nextScreenPath: OwnedMiniaturesRoute()),
    CardButtonCategory(name: "Placeholder 3", nextScreenPath: OwnedMiniaturesRoute()),
    CardButtonCategory(name: "Placeholder 4", nextScreenPath: OwnedMiniaturesRoute()),
  ];

  HomeBloc({
    HomeState? initialState,
  }) : super(
          initialState ?? HomeState(categories: _categories),
        );
}

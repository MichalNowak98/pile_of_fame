import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:pile_of_fame/core/fixtures/owned_miniatures/miniature_info_list_fixture.dart';
import 'package:pile_of_fame/core/style/app_theme.dart';
import 'package:pile_of_fame/features/home_screen/data/models/card_button_category.dart';
import 'package:pile_of_fame/features/home_screen/presentation/bloc/home_bloc.dart';
import 'package:pile_of_fame/features/home_screen/presentation/screens/home_screen.dart';
import 'package:pile_of_fame/features/owned_miniatures/domain/entities/miniature_info_list.dart';
import 'package:pile_of_fame/features/owned_miniatures/presentation/pages/owned_miniatures_screen.dart';

void main() async {
  final MiniatureInfoList miniatureInfoList = await getMiniatureInfoListFixture();
  final categories = [
    CardButtonCategory(name: "Owned Miniatures", nextScreenPath: OwnedMiniaturesScreen.path),
    CardButtonCategory(name: "Placeholder 1", nextScreenPath: HomeScreen.path),
    CardButtonCategory(name: "Placeholder 2", nextScreenPath: HomeScreen.path),
    CardButtonCategory(name: "Placeholder 3", nextScreenPath: HomeScreen.path),
    CardButtonCategory(name: "Placeholder 4", nextScreenPath: HomeScreen.path),
    CardButtonCategory(name: "Placeholder 5", nextScreenPath: HomeScreen.path),
    CardButtonCategory(name: "Placeholder 6", nextScreenPath: HomeScreen.path),
    CardButtonCategory(name: "Placeholder 7", nextScreenPath: HomeScreen.path),
    CardButtonCategory(name: "Placeholder 8", nextScreenPath: HomeScreen.path),
  ];

  testGoldens('Owned miniatures Screen test', (tester) async {
    await tester.pumpHomeScreen(categories: categories, miniatureInfoList: miniatureInfoList);
    await multiScreenGolden(
      tester,
      'owned_miniatures_screen',
      autoHeight: true,
    );
  });
}

extension on WidgetTester {
  Future<void> pumpHomeScreen({
    required MiniatureInfoList miniatureInfoList,
    required List<CardButtonCategory> categories,
  }) {
    return pumpWidgetBuilder(
      HomeScreen(
        testBloc: HomeBloc(initialState: HomeState(categories: categories)),
      ),
      wrapper: materialAppWrapper(
        //localizations: AppLocalizations.localizationsDelegates,
        theme: lightThemeData,
      ),
    );
  }
}

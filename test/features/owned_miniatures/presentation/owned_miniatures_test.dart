import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:pile_of_fame/core/fixtures/owned_miniatures/miniature_info_list_fixture.dart';
import 'package:pile_of_fame/core/style/app_theme.dart';
import 'package:pile_of_fame/features/owned_miniatures/domain/entities/miniature_info_list.dart';
import 'package:pile_of_fame/features/owned_miniatures/presentation/bloc/owned_miniatures_bloc.dart';
import 'package:pile_of_fame/features/owned_miniatures/presentation/bloc/owned_miniatures_state.dart';
import 'package:pile_of_fame/features/owned_miniatures/presentation/pages/owned_miniatures_screen.dart';

void main() async {
  final MiniatureInfoList miniatureInfoList = await getMiniatureInfoListFixture();

  testGoldens(
    'Owned miniatures Screen test',
    (tester) async {
      await tester.pumpOwnedMiniaturesScreen(miniatureInfoList: miniatureInfoList);
      await multiScreenGolden(
        tester,
        'owned_miniatures_screen',
        autoHeight: true,
      );
    },
  );
}

extension on WidgetTester {
  Future<void> pumpOwnedMiniaturesScreen({
    required MiniatureInfoList miniatureInfoList,
  }) {
    return pumpWidgetBuilder(
        BlocProvider<OwnedMiniaturesBloc>(
          create: (context) {
            return OwnedMiniaturesBloc(initialState: OwnedMiniaturesLoadedState(miniatureInfoList: miniatureInfoList));
          },
          child: const OwnedMiniaturesScreen(),
        ),
        wrapper: materialAppWrapper(
          //localizations: AppLocalizations.localizationsDelegates,
          theme: lightThemeData,
        ));
  }
}

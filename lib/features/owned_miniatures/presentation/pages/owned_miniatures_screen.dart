import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:pile_of_fame/core/widgets/common_error_widget.dart';
import 'package:pile_of_fame/core/widgets/loading_widget.dart';
import 'package:pile_of_fame/features/owned_miniatures/presentation/bloc/owned_miniatures_bloc.dart';
import 'package:pile_of_fame/features/owned_miniatures/presentation/bloc/owned_miniatures_event.dart';
import 'package:pile_of_fame/features/owned_miniatures/presentation/bloc/owned_miniatures_state.dart';
import 'package:pile_of_fame/features/owned_miniatures/presentation/widgets/owned_miniature_widget.dart';

@RoutePage()
class OwnedMiniaturesScreen extends StatelessWidget {
  final OwnedMiniaturesBloc? testBloc;

  const OwnedMiniaturesScreen({
    this.testBloc,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocProvider(
      create: (context) => testBloc ?? OwnedMiniaturesBloc(),
      child: Builder(builder: (context) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: theme.colorScheme.surface,
            appBar: AppBar(
              leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  PhosphorIcons.arrow_left,
                  size: 30,
                  color: Colors.black,
                ),
              ),
              title: Text(
                "Owned miniatures",
                style: theme.textTheme.headlineSmall,
              ),
            ),
            body: BlocBuilder<OwnedMiniaturesBloc, OwnedMiniaturesState>(
              bloc: context.read<OwnedMiniaturesBloc>()..add(const OwnedMiniaturesLoadListEvent()),
              builder: (context, state) {
                return state.map(
                  loading: (loadingState) => const LoadingWidget(),
                  loaded: (state) => SingleChildScrollView(
                    child: Column(
                      children: List.generate(
                        state.miniatureInfoList.data.length,
                        (index) => Column(
                          children: [
                            OwnedMiniatureWidget(miniatureInfo: state.miniatureInfoList.data[index]),
                          ],
                        ),
                      ),
                    ),
                  ),
                  error: (errorState) => const CommonErrorWidget(),
                );
              },
            ),
          ),
        );
      }),
    );
  }
}

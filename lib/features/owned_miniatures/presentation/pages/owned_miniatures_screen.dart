import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pile_of_fame/core/widgets/common_error_widget.dart';
import 'package:pile_of_fame/core/widgets/horizontal_line.dart';
import 'package:pile_of_fame/core/widgets/loading_widget.dart';
import 'package:pile_of_fame/features/owned_miniatures/presentation/bloc/owned_miniatures_bloc.dart';
import 'package:pile_of_fame/features/owned_miniatures/presentation/bloc/owned_miniatures_event.dart';
import 'package:pile_of_fame/features/owned_miniatures/presentation/bloc/owned_miniatures_state.dart';
import 'package:pile_of_fame/features/owned_miniatures/presentation/widgets/owned_miniature_widget.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';

class OwnedMiniaturesScreen extends StatefulWidget {
  const OwnedMiniaturesScreen({Key? key}) : super(key: key);

  @override
  State<OwnedMiniaturesScreen> createState() {
    return _OwnedMiniaturesScreenState();
  }
}

class _OwnedMiniaturesScreenState extends State<OwnedMiniaturesScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.backgroundColor,
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
          title: const Text("Owned miniatures"),
        ),
        body: BlocBuilder<OwnedMiniaturesBloc, OwnedMiniaturesState>(
          //TODO - move to getit
          bloc: OwnedMiniaturesBloc()..add(OwnedMiniaturesLoadListEvent()),
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
                        const HorizontalLine(),
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
  }
}

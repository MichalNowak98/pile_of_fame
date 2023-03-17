import 'package:flutter/material.dart';
import 'package:pile_of_fame/core/widgets/horizontal_spacer.dart';
import 'package:pile_of_fame/features/owned_miniatures/domain/entities/miniature_info.dart';
import 'package:pile_of_fame/features/owned_miniatures/presentation/widgets/painted_miniatures_counter_widget.dart';

class OwnedMiniatureWidget extends StatelessWidget {
  const OwnedMiniatureWidget({
    required MiniatureInfo miniatureInfo,
    Key? key,
  })  : _miniatureInfo = miniatureInfo,
        super(key: key);

  final MiniatureInfo _miniatureInfo;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: 100,
      child: Row(
        children: [
          const HorizontalSpacer(),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _miniatureInfo.name,
                  style: theme.textTheme.bodyMedium,
                ),
                Text(
                  "${_miniatureInfo.universe}, ${_miniatureInfo.faction}, ${_miniatureInfo.type}",
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          PaintedMiniaturesCounterWidget(
            paintedQuantity: _miniatureInfo.finishedQuantity,
            overallQuantity: _miniatureInfo.overallQuantity,
            size: 100,
          ),
        ],
      ),
    );
  }
}

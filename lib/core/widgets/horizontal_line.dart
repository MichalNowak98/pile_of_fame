import 'package:flutter/material.dart';
import 'package:pile_of_fame/core/widgets/horizontal_spacer.dart';

class HorizontalLine extends StatelessWidget {
  const HorizontalLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        const HorizontalSpacer(),
        Expanded(
          child: Container(
            height: 1,
            color: Colors.blueGrey,
          ),
        ),
        const HorizontalSpacer(),
      ],
    );
  }
}

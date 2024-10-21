import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pile_of_fame/core/widgets/card_button.dart';
import 'package:pile_of_fame/features/home_screen/data/models/card_button_category.dart';

class HomeCardButton extends StatelessWidget {
  final CardButtonCategory category;

  const HomeCardButton({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return CardButton(
      child: InkWell(
        onTap: () => AutoRouter.of(context).push(category.nextScreenPath),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              category.name,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18.0),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
        onTap: () => Get.toNamed(category.nextScreenPath),
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

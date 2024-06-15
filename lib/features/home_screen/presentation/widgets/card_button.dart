import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pile_of_fame/features/home_screen/data/models/card_button_category.dart';

class CardButton extends StatelessWidget {
  final CardButtonCategory category;

  const CardButton({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: InkWell(
        onTap: () => Get.toNamed(category.nextScreenPath),
        // onTap: () => Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //       builder: (context) => BlocProvider(
        //         create: (context) => OwnedMiniaturesBloc(),
        //         child: OwnedMiniaturesScreen(),
        //       )),
        // ),
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

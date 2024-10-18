import 'package:flutter/material.dart';

class CardButton extends StatelessWidget {
  final Widget child;

  const CardButton({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: child,
    );
  }
}

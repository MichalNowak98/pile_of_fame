import 'package:flutter/material.dart';

class CommonErrorWidget extends StatelessWidget {
  const CommonErrorWidget({String? message, super.key})
      //TODO - localizations
      : _message = message ?? "Something went wrong";

  final String _message;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Text(
      _message,
      style: Theme.of(context).textTheme.bodyMedium,
    ));
  }
}

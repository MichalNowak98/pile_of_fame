import 'package:flutter/material.dart';

class CommonErrorWidget extends StatelessWidget {
  const CommonErrorWidget({String? message, Key? key})
      //TODO - localizations
      : _message = message ?? "Something went wrong",
        super(key: key);

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

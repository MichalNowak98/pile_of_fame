// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// class Screen<BLOC extends Bloc, SCREEN> extends StatelessWidget {
//   const Screen({required this.bloc, super.key});
//   final BLOC bloc;
//
//   static void push(BuildContext context) => Navigator.push(
//     context,
//     MaterialPageRoute(
//       builder: (context) {
//         return Screen(
//           bloc: context.read<BLOC>(),
//         );
//       },
//     ),
//   );
//
//
//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     return BlocProvider<BLOC>(
//       create: (context) => bloc,
//       child: SafeArea(
//         child: Scaffold(
//           backgroundColor: theme.colorScheme.background,
//           appBar: AppBar(),
//           body: Container(),
//         ),
//       ),
//     );
//   }
// }

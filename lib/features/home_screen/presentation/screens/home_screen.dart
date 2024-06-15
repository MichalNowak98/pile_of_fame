import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pile_of_fame/features/home_screen/presentation/bloc/home_bloc.dart';
import 'package:pile_of_fame/features/home_screen/presentation/widgets/card_button.dart';
import 'package:pile_of_fame/injection_container.dart';

class HomeScreen extends StatelessWidget {
  static const path = '/';
  final List<String> items = List<String>.generate(20, (index) => 'Item $index');
  final HomeBloc? testBloc;

  HomeScreen({
    this.testBloc,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => testBloc ?? sl.get<HomeBloc>(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns
                  crossAxisSpacing: 8.0, // Spacing between columns
                  mainAxisSpacing: 8.0, // Spacing between rows
                  childAspectRatio: 3 / 2, // Aspect ratio of the cards
                ),
                itemCount: state.categories.length,
                itemBuilder: (context, index) {
                  return CardButton(
                    category: state.categories[index],
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

part of 'home_bloc.dart';

@immutable
class HomeState {
  final List<CardButtonCategory> categories;

  const HomeState({required this.categories});
}

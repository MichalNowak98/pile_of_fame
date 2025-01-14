import 'package:pile_of_fame/features/home_screen/presentation/bloc/home_bloc.dart';
import 'package:pile_of_fame/injection_container.dart';
Future<void> init() async {
  // Bloc
  sl.registerFactory(
    () => HomeBloc(),
  );
}

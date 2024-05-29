import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:pile_of_fame/core/network/network_info_internet_connection_checker.dart';
import 'package:pile_of_fame/features/owned_miniatures/data/data_sources/miniature_local_datasource.dart';
import 'package:pile_of_fame/features/owned_miniatures/data/data_sources/miniature_remote_datasource.dart';
import 'package:pile_of_fame/features/owned_miniatures/data/models/params/get_miniature_info_list_params_model.dart';
import 'package:pile_of_fame/features/owned_miniatures/data/repositories/miniature_repository_impl.dart';
import 'package:pile_of_fame/features/owned_miniatures/domain/use_cases/get_miniature_info_list.dart';
import 'package:pile_of_fame/features/owned_miniatures/presentation/bloc/owned_miniatures_event.dart';
import 'package:pile_of_fame/features/owned_miniatures/presentation/bloc/owned_miniatures_state.dart';

class OwnedMiniaturesBloc
    extends Bloc<OwnedMiniaturesEvent, OwnedMiniaturesState> {
  OwnedMiniaturesBloc({OwnedMiniaturesState? initialState})
      : super(
          initialState ?? const OwnedMiniaturesState.loading(),
        ) {
    on<OwnedMiniaturesLoadListEvent>(onOwnedMiniaturesLoadingEvent);
  }

  //TODO provider
  final GetMiniatureInfoList _getMiniatureInfoList = GetMiniatureInfoList(
    miniatureRepository: MiniatureRepositoryImpl(
      miniatureLocalDatasource: MiniatureLocalDatasourceImpl(),
      miniatureRemoteDatasource: MiniatureRemoteDatasourceImpl(),
      networkInfo: NetworkInfoInternetConnectionChecker(
        connectionChecker: InternetConnectionChecker(),
      ),
    ),
  );

  void onOwnedMiniaturesLoadingEvent(
    OwnedMiniaturesLoadListEvent event,
    Emitter emit,
  ) async {
    //var box = Hive.box('miniatures');
    // var box = await Hive.openBox(
    //   'miniatures',
    //   path: (await getApplicationDocumentsDirectory()).path,
    // );
    // final min = MiniatureInfoModel(
    //   faction: "faction",
    //   finishedQuantity: 4,
    //   name: "name",
    //   overallQuantity: 7,
    //   type: "type",
    //   universe: "universe",
    // );
   // await box.add(min);

    final result =
        await _getMiniatureInfoList(GetMiniatureInfoListParamsModel());
    //TODO implement exception
    result.fold(
      (l) => null,
      (miniatureInfoList) => emit(
          OwnedMiniaturesState.loaded(miniatureInfoList: miniatureInfoList)),
    );
  }
}

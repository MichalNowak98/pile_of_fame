import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pile_of_fame/features/owned_miniatures/domain/entities/miniature_info_list.dart';

part 'owned_miniatures_state.freezed.dart';

@freezed
class OwnedMiniaturesState with _$OwnedMiniaturesState {
  const factory OwnedMiniaturesState.loading() = OwnedMiniaturesLoadingState;

  const factory OwnedMiniaturesState.loaded({
    required MiniatureInfoList miniatureInfoList,
  }) = OwnedMiniaturesLoadedState;

  const factory OwnedMiniaturesState.error() = OwnedMiniaturesErrorState;
}

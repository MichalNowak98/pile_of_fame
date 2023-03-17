import 'package:freezed_annotation/freezed_annotation.dart';

part 'owned_miniatures_event.freezed.dart';

@freezed
class OwnedMiniaturesEvent with _$OwnedMiniaturesEvent {
  const factory OwnedMiniaturesEvent.loadList() = OwnedMiniaturesLoadListEvent;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'owned_miniatures_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OwnedMiniaturesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OwnedMiniaturesLoadListEvent value) loadList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OwnedMiniaturesLoadListEvent value)? loadList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OwnedMiniaturesLoadListEvent value)? loadList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnedMiniaturesEventCopyWith<$Res> {
  factory $OwnedMiniaturesEventCopyWith(OwnedMiniaturesEvent value,
          $Res Function(OwnedMiniaturesEvent) then) =
      _$OwnedMiniaturesEventCopyWithImpl<$Res, OwnedMiniaturesEvent>;
}

/// @nodoc
class _$OwnedMiniaturesEventCopyWithImpl<$Res,
        $Val extends OwnedMiniaturesEvent>
    implements $OwnedMiniaturesEventCopyWith<$Res> {
  _$OwnedMiniaturesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OwnedMiniaturesLoadListEventCopyWith<$Res> {
  factory _$$OwnedMiniaturesLoadListEventCopyWith(
          _$OwnedMiniaturesLoadListEvent value,
          $Res Function(_$OwnedMiniaturesLoadListEvent) then) =
      __$$OwnedMiniaturesLoadListEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OwnedMiniaturesLoadListEventCopyWithImpl<$Res>
    extends _$OwnedMiniaturesEventCopyWithImpl<$Res,
        _$OwnedMiniaturesLoadListEvent>
    implements _$$OwnedMiniaturesLoadListEventCopyWith<$Res> {
  __$$OwnedMiniaturesLoadListEventCopyWithImpl(
      _$OwnedMiniaturesLoadListEvent _value,
      $Res Function(_$OwnedMiniaturesLoadListEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OwnedMiniaturesLoadListEvent implements OwnedMiniaturesLoadListEvent {
  const _$OwnedMiniaturesLoadListEvent();

  @override
  String toString() {
    return 'OwnedMiniaturesEvent.loadList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OwnedMiniaturesLoadListEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadList,
  }) {
    return loadList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadList,
  }) {
    return loadList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadList,
    required TResult orElse(),
  }) {
    if (loadList != null) {
      return loadList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OwnedMiniaturesLoadListEvent value) loadList,
  }) {
    return loadList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OwnedMiniaturesLoadListEvent value)? loadList,
  }) {
    return loadList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OwnedMiniaturesLoadListEvent value)? loadList,
    required TResult orElse(),
  }) {
    if (loadList != null) {
      return loadList(this);
    }
    return orElse();
  }
}

abstract class OwnedMiniaturesLoadListEvent implements OwnedMiniaturesEvent {
  const factory OwnedMiniaturesLoadListEvent() = _$OwnedMiniaturesLoadListEvent;
}

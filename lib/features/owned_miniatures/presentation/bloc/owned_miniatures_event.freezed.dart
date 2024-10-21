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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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

  /// Create a copy of OwnedMiniaturesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OwnedMiniaturesLoadListEventImplCopyWith<$Res> {
  factory _$$OwnedMiniaturesLoadListEventImplCopyWith(
          _$OwnedMiniaturesLoadListEventImpl value,
          $Res Function(_$OwnedMiniaturesLoadListEventImpl) then) =
      __$$OwnedMiniaturesLoadListEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OwnedMiniaturesLoadListEventImplCopyWithImpl<$Res>
    extends _$OwnedMiniaturesEventCopyWithImpl<$Res,
        _$OwnedMiniaturesLoadListEventImpl>
    implements _$$OwnedMiniaturesLoadListEventImplCopyWith<$Res> {
  __$$OwnedMiniaturesLoadListEventImplCopyWithImpl(
      _$OwnedMiniaturesLoadListEventImpl _value,
      $Res Function(_$OwnedMiniaturesLoadListEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of OwnedMiniaturesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OwnedMiniaturesLoadListEventImpl
    implements OwnedMiniaturesLoadListEvent {
  const _$OwnedMiniaturesLoadListEventImpl();

  @override
  String toString() {
    return 'OwnedMiniaturesEvent.loadList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OwnedMiniaturesLoadListEventImpl);
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
  const factory OwnedMiniaturesLoadListEvent() =
      _$OwnedMiniaturesLoadListEventImpl;
}

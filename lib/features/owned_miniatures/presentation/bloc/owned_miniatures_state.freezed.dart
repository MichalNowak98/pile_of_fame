// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'owned_miniatures_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OwnedMiniaturesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(MiniatureInfoList miniatureInfoList) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(MiniatureInfoList miniatureInfoList)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MiniatureInfoList miniatureInfoList)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OwnedMiniaturesLoadingState value) loading,
    required TResult Function(OwnedMiniaturesLoadedState value) loaded,
    required TResult Function(OwnedMiniaturesErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OwnedMiniaturesLoadingState value)? loading,
    TResult? Function(OwnedMiniaturesLoadedState value)? loaded,
    TResult? Function(OwnedMiniaturesErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OwnedMiniaturesLoadingState value)? loading,
    TResult Function(OwnedMiniaturesLoadedState value)? loaded,
    TResult Function(OwnedMiniaturesErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnedMiniaturesStateCopyWith<$Res> {
  factory $OwnedMiniaturesStateCopyWith(OwnedMiniaturesState value,
          $Res Function(OwnedMiniaturesState) then) =
      _$OwnedMiniaturesStateCopyWithImpl<$Res, OwnedMiniaturesState>;
}

/// @nodoc
class _$OwnedMiniaturesStateCopyWithImpl<$Res,
        $Val extends OwnedMiniaturesState>
    implements $OwnedMiniaturesStateCopyWith<$Res> {
  _$OwnedMiniaturesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OwnedMiniaturesLoadingStateCopyWith<$Res> {
  factory _$$OwnedMiniaturesLoadingStateCopyWith(
          _$OwnedMiniaturesLoadingState value,
          $Res Function(_$OwnedMiniaturesLoadingState) then) =
      __$$OwnedMiniaturesLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OwnedMiniaturesLoadingStateCopyWithImpl<$Res>
    extends _$OwnedMiniaturesStateCopyWithImpl<$Res,
        _$OwnedMiniaturesLoadingState>
    implements _$$OwnedMiniaturesLoadingStateCopyWith<$Res> {
  __$$OwnedMiniaturesLoadingStateCopyWithImpl(
      _$OwnedMiniaturesLoadingState _value,
      $Res Function(_$OwnedMiniaturesLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OwnedMiniaturesLoadingState implements OwnedMiniaturesLoadingState {
  const _$OwnedMiniaturesLoadingState();

  @override
  String toString() {
    return 'OwnedMiniaturesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OwnedMiniaturesLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(MiniatureInfoList miniatureInfoList) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(MiniatureInfoList miniatureInfoList)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MiniatureInfoList miniatureInfoList)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OwnedMiniaturesLoadingState value) loading,
    required TResult Function(OwnedMiniaturesLoadedState value) loaded,
    required TResult Function(OwnedMiniaturesErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OwnedMiniaturesLoadingState value)? loading,
    TResult? Function(OwnedMiniaturesLoadedState value)? loaded,
    TResult? Function(OwnedMiniaturesErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OwnedMiniaturesLoadingState value)? loading,
    TResult Function(OwnedMiniaturesLoadedState value)? loaded,
    TResult Function(OwnedMiniaturesErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class OwnedMiniaturesLoadingState implements OwnedMiniaturesState {
  const factory OwnedMiniaturesLoadingState() = _$OwnedMiniaturesLoadingState;
}

/// @nodoc
abstract class _$$OwnedMiniaturesLoadedStateCopyWith<$Res> {
  factory _$$OwnedMiniaturesLoadedStateCopyWith(
          _$OwnedMiniaturesLoadedState value,
          $Res Function(_$OwnedMiniaturesLoadedState) then) =
      __$$OwnedMiniaturesLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({MiniatureInfoList miniatureInfoList});
}

/// @nodoc
class __$$OwnedMiniaturesLoadedStateCopyWithImpl<$Res>
    extends _$OwnedMiniaturesStateCopyWithImpl<$Res,
        _$OwnedMiniaturesLoadedState>
    implements _$$OwnedMiniaturesLoadedStateCopyWith<$Res> {
  __$$OwnedMiniaturesLoadedStateCopyWithImpl(
      _$OwnedMiniaturesLoadedState _value,
      $Res Function(_$OwnedMiniaturesLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? miniatureInfoList = null,
  }) {
    return _then(_$OwnedMiniaturesLoadedState(
      miniatureInfoList: null == miniatureInfoList
          ? _value.miniatureInfoList
          : miniatureInfoList // ignore: cast_nullable_to_non_nullable
              as MiniatureInfoList,
    ));
  }
}

/// @nodoc

class _$OwnedMiniaturesLoadedState implements OwnedMiniaturesLoadedState {
  const _$OwnedMiniaturesLoadedState({required this.miniatureInfoList});

  @override
  final MiniatureInfoList miniatureInfoList;

  @override
  String toString() {
    return 'OwnedMiniaturesState.loaded(miniatureInfoList: $miniatureInfoList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OwnedMiniaturesLoadedState &&
            (identical(other.miniatureInfoList, miniatureInfoList) ||
                other.miniatureInfoList == miniatureInfoList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, miniatureInfoList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OwnedMiniaturesLoadedStateCopyWith<_$OwnedMiniaturesLoadedState>
      get copyWith => __$$OwnedMiniaturesLoadedStateCopyWithImpl<
          _$OwnedMiniaturesLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(MiniatureInfoList miniatureInfoList) loaded,
    required TResult Function() error,
  }) {
    return loaded(miniatureInfoList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(MiniatureInfoList miniatureInfoList)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(miniatureInfoList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MiniatureInfoList miniatureInfoList)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(miniatureInfoList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OwnedMiniaturesLoadingState value) loading,
    required TResult Function(OwnedMiniaturesLoadedState value) loaded,
    required TResult Function(OwnedMiniaturesErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OwnedMiniaturesLoadingState value)? loading,
    TResult? Function(OwnedMiniaturesLoadedState value)? loaded,
    TResult? Function(OwnedMiniaturesErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OwnedMiniaturesLoadingState value)? loading,
    TResult Function(OwnedMiniaturesLoadedState value)? loaded,
    TResult Function(OwnedMiniaturesErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class OwnedMiniaturesLoadedState implements OwnedMiniaturesState {
  const factory OwnedMiniaturesLoadedState(
          {required final MiniatureInfoList miniatureInfoList}) =
      _$OwnedMiniaturesLoadedState;

  MiniatureInfoList get miniatureInfoList;
  @JsonKey(ignore: true)
  _$$OwnedMiniaturesLoadedStateCopyWith<_$OwnedMiniaturesLoadedState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OwnedMiniaturesErrorStateCopyWith<$Res> {
  factory _$$OwnedMiniaturesErrorStateCopyWith(
          _$OwnedMiniaturesErrorState value,
          $Res Function(_$OwnedMiniaturesErrorState) then) =
      __$$OwnedMiniaturesErrorStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OwnedMiniaturesErrorStateCopyWithImpl<$Res>
    extends _$OwnedMiniaturesStateCopyWithImpl<$Res,
        _$OwnedMiniaturesErrorState>
    implements _$$OwnedMiniaturesErrorStateCopyWith<$Res> {
  __$$OwnedMiniaturesErrorStateCopyWithImpl(_$OwnedMiniaturesErrorState _value,
      $Res Function(_$OwnedMiniaturesErrorState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OwnedMiniaturesErrorState implements OwnedMiniaturesErrorState {
  const _$OwnedMiniaturesErrorState();

  @override
  String toString() {
    return 'OwnedMiniaturesState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OwnedMiniaturesErrorState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(MiniatureInfoList miniatureInfoList) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(MiniatureInfoList miniatureInfoList)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MiniatureInfoList miniatureInfoList)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OwnedMiniaturesLoadingState value) loading,
    required TResult Function(OwnedMiniaturesLoadedState value) loaded,
    required TResult Function(OwnedMiniaturesErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OwnedMiniaturesLoadingState value)? loading,
    TResult? Function(OwnedMiniaturesLoadedState value)? loaded,
    TResult? Function(OwnedMiniaturesErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OwnedMiniaturesLoadingState value)? loading,
    TResult Function(OwnedMiniaturesLoadedState value)? loaded,
    TResult Function(OwnedMiniaturesErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class OwnedMiniaturesErrorState implements OwnedMiniaturesState {
  const factory OwnedMiniaturesErrorState() = _$OwnedMiniaturesErrorState;
}

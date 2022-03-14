// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_ui_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeUiEventTearOff {
  const _$HomeUiEventTearOff();

  SnackBar snackBar(String message) {
    return SnackBar(
      message,
    );
  }
}

/// @nodoc
const $HomeUiEvent = _$HomeUiEventTearOff();

/// @nodoc
mixin _$HomeUiEvent {
  String get message => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) snackBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? snackBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? snackBar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SnackBar value) snackBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SnackBar value)? snackBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SnackBar value)? snackBar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeUiEventCopyWith<HomeUiEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeUiEventCopyWith<$Res> {
  factory $HomeUiEventCopyWith(
          HomeUiEvent value, $Res Function(HomeUiEvent) then) =
      _$HomeUiEventCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$HomeUiEventCopyWithImpl<$Res> implements $HomeUiEventCopyWith<$Res> {
  _$HomeUiEventCopyWithImpl(this._value, this._then);

  final HomeUiEvent _value;
  // ignore: unused_field
  final $Res Function(HomeUiEvent) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $SnackBarCopyWith<$Res> implements $HomeUiEventCopyWith<$Res> {
  factory $SnackBarCopyWith(SnackBar value, $Res Function(SnackBar) then) =
      _$SnackBarCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$SnackBarCopyWithImpl<$Res> extends _$HomeUiEventCopyWithImpl<$Res>
    implements $SnackBarCopyWith<$Res> {
  _$SnackBarCopyWithImpl(SnackBar _value, $Res Function(SnackBar) _then)
      : super(_value, (v) => _then(v as SnackBar));

  @override
  SnackBar get _value => super._value as SnackBar;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(SnackBar(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SnackBar implements SnackBar {
  const _$SnackBar(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'HomeUiEvent.snackBar(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SnackBar &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $SnackBarCopyWith<SnackBar> get copyWith =>
      _$SnackBarCopyWithImpl<SnackBar>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) snackBar,
  }) {
    return snackBar(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? snackBar,
  }) {
    return snackBar?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? snackBar,
    required TResult orElse(),
  }) {
    if (snackBar != null) {
      return snackBar(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SnackBar value) snackBar,
  }) {
    return snackBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SnackBar value)? snackBar,
  }) {
    return snackBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SnackBar value)? snackBar,
    required TResult orElse(),
  }) {
    if (snackBar != null) {
      return snackBar(this);
    }
    return orElse();
  }
}

abstract class SnackBar implements HomeUiEvent {
  const factory SnackBar(String message) = _$SnackBar;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  $SnackBarCopyWith<SnackBar> get copyWith =>
      throw _privateConstructorUsedError;
}

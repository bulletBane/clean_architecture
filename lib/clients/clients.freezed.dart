// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'clients.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlaceHolderClientTearOff {
  const _$PlaceHolderClientTearOff();

  _Words words() {
    return const _Words();
  }
}

/// @nodoc
const $PlaceHolderClient = _$PlaceHolderClientTearOff();

/// @nodoc
mixin _$PlaceHolderClient {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() words,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? words,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? words,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Words value) words,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Words value)? words,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Words value)? words,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceHolderClientCopyWith<$Res> {
  factory $PlaceHolderClientCopyWith(
          PlaceHolderClient value, $Res Function(PlaceHolderClient) then) =
      _$PlaceHolderClientCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlaceHolderClientCopyWithImpl<$Res>
    implements $PlaceHolderClientCopyWith<$Res> {
  _$PlaceHolderClientCopyWithImpl(this._value, this._then);

  final PlaceHolderClient _value;
  // ignore: unused_field
  final $Res Function(PlaceHolderClient) _then;
}

/// @nodoc
abstract class _$WordsCopyWith<$Res> {
  factory _$WordsCopyWith(_Words value, $Res Function(_Words) then) =
      __$WordsCopyWithImpl<$Res>;
}

/// @nodoc
class __$WordsCopyWithImpl<$Res> extends _$PlaceHolderClientCopyWithImpl<$Res>
    implements _$WordsCopyWith<$Res> {
  __$WordsCopyWithImpl(_Words _value, $Res Function(_Words) _then)
      : super(_value, (v) => _then(v as _Words));

  @override
  _Words get _value => super._value as _Words;
}

/// @nodoc

class _$_Words extends _Words {
  const _$_Words() : super._();

  @override
  String toString() {
    return 'PlaceHolderClient.words()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Words);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() words,
  }) {
    return words();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? words,
  }) {
    return words?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? words,
    required TResult orElse(),
  }) {
    if (words != null) {
      return words();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Words value) words,
  }) {
    return words(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Words value)? words,
  }) {
    return words?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Words value)? words,
    required TResult orElse(),
  }) {
    if (words != null) {
      return words(this);
    }
    return orElse();
  }
}

abstract class _Words extends PlaceHolderClient {
  const factory _Words() = _$_Words;
  const _Words._() : super._();
}

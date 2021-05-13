// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'freezed_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FreezedModelTearOff {
  const _$FreezedModelTearOff();

  _FreezedModel call(String string) {
    return _FreezedModel(
      string,
    );
  }
}

/// @nodoc
const $FreezedModel = _$FreezedModelTearOff();

/// @nodoc
mixin _$FreezedModel {
  String get string => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FreezedModelCopyWith<FreezedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreezedModelCopyWith<$Res> {
  factory $FreezedModelCopyWith(
          FreezedModel value, $Res Function(FreezedModel) then) =
      _$FreezedModelCopyWithImpl<$Res>;
  $Res call({String string});
}

/// @nodoc
class _$FreezedModelCopyWithImpl<$Res> implements $FreezedModelCopyWith<$Res> {
  _$FreezedModelCopyWithImpl(this._value, this._then);

  final FreezedModel _value;
  // ignore: unused_field
  final $Res Function(FreezedModel) _then;

  @override
  $Res call({
    Object? string = freezed,
  }) {
    return _then(_value.copyWith(
      string: string == freezed
          ? _value.string
          : string // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$FreezedModelCopyWith<$Res>
    implements $FreezedModelCopyWith<$Res> {
  factory _$FreezedModelCopyWith(
          _FreezedModel value, $Res Function(_FreezedModel) then) =
      __$FreezedModelCopyWithImpl<$Res>;
  @override
  $Res call({String string});
}

/// @nodoc
class __$FreezedModelCopyWithImpl<$Res> extends _$FreezedModelCopyWithImpl<$Res>
    implements _$FreezedModelCopyWith<$Res> {
  __$FreezedModelCopyWithImpl(
      _FreezedModel _value, $Res Function(_FreezedModel) _then)
      : super(_value, (v) => _then(v as _FreezedModel));

  @override
  _FreezedModel get _value => super._value as _FreezedModel;

  @override
  $Res call({
    Object? string = freezed,
  }) {
    return _then(_FreezedModel(
      string == freezed
          ? _value.string
          : string // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FreezedModel implements _FreezedModel {
  _$_FreezedModel(this.string);

  @override
  final String string;

  @override
  String toString() {
    return 'FreezedModel(string: $string)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FreezedModel &&
            (identical(other.string, string) ||
                const DeepCollectionEquality().equals(other.string, string)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(string);

  @JsonKey(ignore: true)
  @override
  _$FreezedModelCopyWith<_FreezedModel> get copyWith =>
      __$FreezedModelCopyWithImpl<_FreezedModel>(this, _$identity);
}

abstract class _FreezedModel implements FreezedModel {
  factory _FreezedModel(String string) = _$_FreezedModel;

  @override
  String get string => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FreezedModelCopyWith<_FreezedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'otp_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OtpStateTearOff {
  const _$OtpStateTearOff();

  _OtpLoading loading() {
    return const _OtpLoading();
  }

  _OtpValid valid() {
    return const _OtpValid();
  }

  _OtpInvalid invalid() {
    return const _OtpInvalid();
  }

  _OtpInitial initial() {
    return const _OtpInitial();
  }

  _OtpError error(OtpFailure otpFailure) {
    return _OtpError(
      otpFailure,
    );
  }

  _OtpSubmit submit() {
    return const _OtpSubmit();
  }
}

/// @nodoc
const $OtpState = _$OtpStateTearOff();

/// @nodoc
mixin _$OtpState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() valid,
    required TResult Function() invalid,
    required TResult Function() initial,
    required TResult Function(OtpFailure otpFailure) error,
    required TResult Function() submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? valid,
    TResult Function()? invalid,
    TResult Function()? initial,
    TResult Function(OtpFailure otpFailure)? error,
    TResult Function()? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OtpLoading value) loading,
    required TResult Function(_OtpValid value) valid,
    required TResult Function(_OtpInvalid value) invalid,
    required TResult Function(_OtpInitial value) initial,
    required TResult Function(_OtpError value) error,
    required TResult Function(_OtpSubmit value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OtpLoading value)? loading,
    TResult Function(_OtpValid value)? valid,
    TResult Function(_OtpInvalid value)? invalid,
    TResult Function(_OtpInitial value)? initial,
    TResult Function(_OtpError value)? error,
    TResult Function(_OtpSubmit value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpStateCopyWith<$Res> {
  factory $OtpStateCopyWith(OtpState value, $Res Function(OtpState) then) =
      _$OtpStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$OtpStateCopyWithImpl<$Res> implements $OtpStateCopyWith<$Res> {
  _$OtpStateCopyWithImpl(this._value, this._then);

  final OtpState _value;
  // ignore: unused_field
  final $Res Function(OtpState) _then;
}

/// @nodoc
abstract class _$OtpLoadingCopyWith<$Res> {
  factory _$OtpLoadingCopyWith(
          _OtpLoading value, $Res Function(_OtpLoading) then) =
      __$OtpLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$OtpLoadingCopyWithImpl<$Res> extends _$OtpStateCopyWithImpl<$Res>
    implements _$OtpLoadingCopyWith<$Res> {
  __$OtpLoadingCopyWithImpl(
      _OtpLoading _value, $Res Function(_OtpLoading) _then)
      : super(_value, (v) => _then(v as _OtpLoading));

  @override
  _OtpLoading get _value => super._value as _OtpLoading;
}

/// @nodoc
class _$_OtpLoading implements _OtpLoading {
  const _$_OtpLoading();

  @override
  String toString() {
    return 'OtpState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OtpLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() valid,
    required TResult Function() invalid,
    required TResult Function() initial,
    required TResult Function(OtpFailure otpFailure) error,
    required TResult Function() submit,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? valid,
    TResult Function()? invalid,
    TResult Function()? initial,
    TResult Function(OtpFailure otpFailure)? error,
    TResult Function()? submit,
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
    required TResult Function(_OtpLoading value) loading,
    required TResult Function(_OtpValid value) valid,
    required TResult Function(_OtpInvalid value) invalid,
    required TResult Function(_OtpInitial value) initial,
    required TResult Function(_OtpError value) error,
    required TResult Function(_OtpSubmit value) submit,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OtpLoading value)? loading,
    TResult Function(_OtpValid value)? valid,
    TResult Function(_OtpInvalid value)? invalid,
    TResult Function(_OtpInitial value)? initial,
    TResult Function(_OtpError value)? error,
    TResult Function(_OtpSubmit value)? submit,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _OtpLoading implements OtpState {
  const factory _OtpLoading() = _$_OtpLoading;
}

/// @nodoc
abstract class _$OtpValidCopyWith<$Res> {
  factory _$OtpValidCopyWith(_OtpValid value, $Res Function(_OtpValid) then) =
      __$OtpValidCopyWithImpl<$Res>;
}

/// @nodoc
class __$OtpValidCopyWithImpl<$Res> extends _$OtpStateCopyWithImpl<$Res>
    implements _$OtpValidCopyWith<$Res> {
  __$OtpValidCopyWithImpl(_OtpValid _value, $Res Function(_OtpValid) _then)
      : super(_value, (v) => _then(v as _OtpValid));

  @override
  _OtpValid get _value => super._value as _OtpValid;
}

/// @nodoc
class _$_OtpValid implements _OtpValid {
  const _$_OtpValid();

  @override
  String toString() {
    return 'OtpState.valid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OtpValid);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() valid,
    required TResult Function() invalid,
    required TResult Function() initial,
    required TResult Function(OtpFailure otpFailure) error,
    required TResult Function() submit,
  }) {
    return valid();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? valid,
    TResult Function()? invalid,
    TResult Function()? initial,
    TResult Function(OtpFailure otpFailure)? error,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OtpLoading value) loading,
    required TResult Function(_OtpValid value) valid,
    required TResult Function(_OtpInvalid value) invalid,
    required TResult Function(_OtpInitial value) initial,
    required TResult Function(_OtpError value) error,
    required TResult Function(_OtpSubmit value) submit,
  }) {
    return valid(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OtpLoading value)? loading,
    TResult Function(_OtpValid value)? valid,
    TResult Function(_OtpInvalid value)? invalid,
    TResult Function(_OtpInitial value)? initial,
    TResult Function(_OtpError value)? error,
    TResult Function(_OtpSubmit value)? submit,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(this);
    }
    return orElse();
  }
}

abstract class _OtpValid implements OtpState {
  const factory _OtpValid() = _$_OtpValid;
}

/// @nodoc
abstract class _$OtpInvalidCopyWith<$Res> {
  factory _$OtpInvalidCopyWith(
          _OtpInvalid value, $Res Function(_OtpInvalid) then) =
      __$OtpInvalidCopyWithImpl<$Res>;
}

/// @nodoc
class __$OtpInvalidCopyWithImpl<$Res> extends _$OtpStateCopyWithImpl<$Res>
    implements _$OtpInvalidCopyWith<$Res> {
  __$OtpInvalidCopyWithImpl(
      _OtpInvalid _value, $Res Function(_OtpInvalid) _then)
      : super(_value, (v) => _then(v as _OtpInvalid));

  @override
  _OtpInvalid get _value => super._value as _OtpInvalid;
}

/// @nodoc
class _$_OtpInvalid implements _OtpInvalid {
  const _$_OtpInvalid();

  @override
  String toString() {
    return 'OtpState.invalid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OtpInvalid);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() valid,
    required TResult Function() invalid,
    required TResult Function() initial,
    required TResult Function(OtpFailure otpFailure) error,
    required TResult Function() submit,
  }) {
    return invalid();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? valid,
    TResult Function()? invalid,
    TResult Function()? initial,
    TResult Function(OtpFailure otpFailure)? error,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OtpLoading value) loading,
    required TResult Function(_OtpValid value) valid,
    required TResult Function(_OtpInvalid value) invalid,
    required TResult Function(_OtpInitial value) initial,
    required TResult Function(_OtpError value) error,
    required TResult Function(_OtpSubmit value) submit,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OtpLoading value)? loading,
    TResult Function(_OtpValid value)? valid,
    TResult Function(_OtpInvalid value)? invalid,
    TResult Function(_OtpInitial value)? initial,
    TResult Function(_OtpError value)? error,
    TResult Function(_OtpSubmit value)? submit,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class _OtpInvalid implements OtpState {
  const factory _OtpInvalid() = _$_OtpInvalid;
}

/// @nodoc
abstract class _$OtpInitialCopyWith<$Res> {
  factory _$OtpInitialCopyWith(
          _OtpInitial value, $Res Function(_OtpInitial) then) =
      __$OtpInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$OtpInitialCopyWithImpl<$Res> extends _$OtpStateCopyWithImpl<$Res>
    implements _$OtpInitialCopyWith<$Res> {
  __$OtpInitialCopyWithImpl(
      _OtpInitial _value, $Res Function(_OtpInitial) _then)
      : super(_value, (v) => _then(v as _OtpInitial));

  @override
  _OtpInitial get _value => super._value as _OtpInitial;
}

/// @nodoc
class _$_OtpInitial implements _OtpInitial {
  const _$_OtpInitial();

  @override
  String toString() {
    return 'OtpState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OtpInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() valid,
    required TResult Function() invalid,
    required TResult Function() initial,
    required TResult Function(OtpFailure otpFailure) error,
    required TResult Function() submit,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? valid,
    TResult Function()? invalid,
    TResult Function()? initial,
    TResult Function(OtpFailure otpFailure)? error,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OtpLoading value) loading,
    required TResult Function(_OtpValid value) valid,
    required TResult Function(_OtpInvalid value) invalid,
    required TResult Function(_OtpInitial value) initial,
    required TResult Function(_OtpError value) error,
    required TResult Function(_OtpSubmit value) submit,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OtpLoading value)? loading,
    TResult Function(_OtpValid value)? valid,
    TResult Function(_OtpInvalid value)? invalid,
    TResult Function(_OtpInitial value)? initial,
    TResult Function(_OtpError value)? error,
    TResult Function(_OtpSubmit value)? submit,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _OtpInitial implements OtpState {
  const factory _OtpInitial() = _$_OtpInitial;
}

/// @nodoc
abstract class _$OtpErrorCopyWith<$Res> {
  factory _$OtpErrorCopyWith(_OtpError value, $Res Function(_OtpError) then) =
      __$OtpErrorCopyWithImpl<$Res>;
  $Res call({OtpFailure otpFailure});
}

/// @nodoc
class __$OtpErrorCopyWithImpl<$Res> extends _$OtpStateCopyWithImpl<$Res>
    implements _$OtpErrorCopyWith<$Res> {
  __$OtpErrorCopyWithImpl(_OtpError _value, $Res Function(_OtpError) _then)
      : super(_value, (v) => _then(v as _OtpError));

  @override
  _OtpError get _value => super._value as _OtpError;

  @override
  $Res call({
    Object? otpFailure = freezed,
  }) {
    return _then(_OtpError(
      otpFailure == freezed
          ? _value.otpFailure
          : otpFailure // ignore: cast_nullable_to_non_nullable
              as OtpFailure,
    ));
  }
}

/// @nodoc
class _$_OtpError implements _OtpError {
  const _$_OtpError(this.otpFailure);

  @override
  final OtpFailure otpFailure;

  @override
  String toString() {
    return 'OtpState.error(otpFailure: $otpFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OtpError &&
            (identical(other.otpFailure, otpFailure) ||
                const DeepCollectionEquality()
                    .equals(other.otpFailure, otpFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(otpFailure);

  @JsonKey(ignore: true)
  @override
  _$OtpErrorCopyWith<_OtpError> get copyWith =>
      __$OtpErrorCopyWithImpl<_OtpError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() valid,
    required TResult Function() invalid,
    required TResult Function() initial,
    required TResult Function(OtpFailure otpFailure) error,
    required TResult Function() submit,
  }) {
    return error(otpFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? valid,
    TResult Function()? invalid,
    TResult Function()? initial,
    TResult Function(OtpFailure otpFailure)? error,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(otpFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OtpLoading value) loading,
    required TResult Function(_OtpValid value) valid,
    required TResult Function(_OtpInvalid value) invalid,
    required TResult Function(_OtpInitial value) initial,
    required TResult Function(_OtpError value) error,
    required TResult Function(_OtpSubmit value) submit,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OtpLoading value)? loading,
    TResult Function(_OtpValid value)? valid,
    TResult Function(_OtpInvalid value)? invalid,
    TResult Function(_OtpInitial value)? initial,
    TResult Function(_OtpError value)? error,
    TResult Function(_OtpSubmit value)? submit,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _OtpError implements OtpState {
  const factory _OtpError(OtpFailure otpFailure) = _$_OtpError;

  OtpFailure get otpFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OtpErrorCopyWith<_OtpError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OtpSubmitCopyWith<$Res> {
  factory _$OtpSubmitCopyWith(
          _OtpSubmit value, $Res Function(_OtpSubmit) then) =
      __$OtpSubmitCopyWithImpl<$Res>;
}

/// @nodoc
class __$OtpSubmitCopyWithImpl<$Res> extends _$OtpStateCopyWithImpl<$Res>
    implements _$OtpSubmitCopyWith<$Res> {
  __$OtpSubmitCopyWithImpl(_OtpSubmit _value, $Res Function(_OtpSubmit) _then)
      : super(_value, (v) => _then(v as _OtpSubmit));

  @override
  _OtpSubmit get _value => super._value as _OtpSubmit;
}

/// @nodoc
class _$_OtpSubmit implements _OtpSubmit {
  const _$_OtpSubmit();

  @override
  String toString() {
    return 'OtpState.submit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OtpSubmit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() valid,
    required TResult Function() invalid,
    required TResult Function() initial,
    required TResult Function(OtpFailure otpFailure) error,
    required TResult Function() submit,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? valid,
    TResult Function()? invalid,
    TResult Function()? initial,
    TResult Function(OtpFailure otpFailure)? error,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OtpLoading value) loading,
    required TResult Function(_OtpValid value) valid,
    required TResult Function(_OtpInvalid value) invalid,
    required TResult Function(_OtpInitial value) initial,
    required TResult Function(_OtpError value) error,
    required TResult Function(_OtpSubmit value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OtpLoading value)? loading,
    TResult Function(_OtpValid value)? valid,
    TResult Function(_OtpInvalid value)? invalid,
    TResult Function(_OtpInitial value)? initial,
    TResult Function(_OtpError value)? error,
    TResult Function(_OtpSubmit value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _OtpSubmit implements OtpState {
  const factory _OtpSubmit() = _$_OtpSubmit;
}

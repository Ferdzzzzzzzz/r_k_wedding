// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthStateTearOff {
  const _$AuthStateTearOff();

// ignore: unused_element
  Authenticated authenticated() {
    return const Authenticated();
  }

// ignore: unused_element
  NotAuthenticated notAuthenticated() {
    return const NotAuthenticated();
  }

// ignore: unused_element
  CheckingAuthenticationStatus initial() {
    return const CheckingAuthenticationStatus();
  }
}

// ignore: unused_element
const $AuthState = _$AuthStateTearOff();

mixin _$AuthState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authenticated(),
    @required Result notAuthenticated(),
    @required Result initial(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authenticated(),
    Result notAuthenticated(),
    Result initial(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authenticated(Authenticated value),
    @required Result notAuthenticated(NotAuthenticated value),
    @required Result initial(CheckingAuthenticationStatus value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authenticated(Authenticated value),
    Result notAuthenticated(NotAuthenticated value),
    Result initial(CheckingAuthenticationStatus value),
    @required Result orElse(),
  });
}

abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

abstract class $AuthenticatedCopyWith<$Res> {
  factory $AuthenticatedCopyWith(
          Authenticated value, $Res Function(Authenticated) then) =
      _$AuthenticatedCopyWithImpl<$Res>;
}

class _$AuthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthenticatedCopyWith<$Res> {
  _$AuthenticatedCopyWithImpl(
      Authenticated _value, $Res Function(Authenticated) _then)
      : super(_value, (v) => _then(v as Authenticated));

  @override
  Authenticated get _value => super._value as Authenticated;
}

class _$Authenticated implements Authenticated {
  const _$Authenticated();

  @override
  String toString() {
    return 'AuthState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authenticated(),
    @required Result notAuthenticated(),
    @required Result initial(),
  }) {
    assert(authenticated != null);
    assert(notAuthenticated != null);
    assert(initial != null);
    return authenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authenticated(),
    Result notAuthenticated(),
    Result initial(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authenticated(Authenticated value),
    @required Result notAuthenticated(NotAuthenticated value),
    @required Result initial(CheckingAuthenticationStatus value),
  }) {
    assert(authenticated != null);
    assert(notAuthenticated != null);
    assert(initial != null);
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authenticated(Authenticated value),
    Result notAuthenticated(NotAuthenticated value),
    Result initial(CheckingAuthenticationStatus value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements AuthState {
  const factory Authenticated() = _$Authenticated;
}

abstract class $NotAuthenticatedCopyWith<$Res> {
  factory $NotAuthenticatedCopyWith(
          NotAuthenticated value, $Res Function(NotAuthenticated) then) =
      _$NotAuthenticatedCopyWithImpl<$Res>;
}

class _$NotAuthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $NotAuthenticatedCopyWith<$Res> {
  _$NotAuthenticatedCopyWithImpl(
      NotAuthenticated _value, $Res Function(NotAuthenticated) _then)
      : super(_value, (v) => _then(v as NotAuthenticated));

  @override
  NotAuthenticated get _value => super._value as NotAuthenticated;
}

class _$NotAuthenticated implements NotAuthenticated {
  const _$NotAuthenticated();

  @override
  String toString() {
    return 'AuthState.notAuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NotAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authenticated(),
    @required Result notAuthenticated(),
    @required Result initial(),
  }) {
    assert(authenticated != null);
    assert(notAuthenticated != null);
    assert(initial != null);
    return notAuthenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authenticated(),
    Result notAuthenticated(),
    Result initial(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notAuthenticated != null) {
      return notAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authenticated(Authenticated value),
    @required Result notAuthenticated(NotAuthenticated value),
    @required Result initial(CheckingAuthenticationStatus value),
  }) {
    assert(authenticated != null);
    assert(notAuthenticated != null);
    assert(initial != null);
    return notAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authenticated(Authenticated value),
    Result notAuthenticated(NotAuthenticated value),
    Result initial(CheckingAuthenticationStatus value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notAuthenticated != null) {
      return notAuthenticated(this);
    }
    return orElse();
  }
}

abstract class NotAuthenticated implements AuthState {
  const factory NotAuthenticated() = _$NotAuthenticated;
}

abstract class $CheckingAuthenticationStatusCopyWith<$Res> {
  factory $CheckingAuthenticationStatusCopyWith(
          CheckingAuthenticationStatus value,
          $Res Function(CheckingAuthenticationStatus) then) =
      _$CheckingAuthenticationStatusCopyWithImpl<$Res>;
}

class _$CheckingAuthenticationStatusCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $CheckingAuthenticationStatusCopyWith<$Res> {
  _$CheckingAuthenticationStatusCopyWithImpl(
      CheckingAuthenticationStatus _value,
      $Res Function(CheckingAuthenticationStatus) _then)
      : super(_value, (v) => _then(v as CheckingAuthenticationStatus));

  @override
  CheckingAuthenticationStatus get _value =>
      super._value as CheckingAuthenticationStatus;
}

class _$CheckingAuthenticationStatus implements CheckingAuthenticationStatus {
  const _$CheckingAuthenticationStatus();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CheckingAuthenticationStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authenticated(),
    @required Result notAuthenticated(),
    @required Result initial(),
  }) {
    assert(authenticated != null);
    assert(notAuthenticated != null);
    assert(initial != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authenticated(),
    Result notAuthenticated(),
    Result initial(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authenticated(Authenticated value),
    @required Result notAuthenticated(NotAuthenticated value),
    @required Result initial(CheckingAuthenticationStatus value),
  }) {
    assert(authenticated != null);
    assert(notAuthenticated != null);
    assert(initial != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authenticated(Authenticated value),
    Result notAuthenticated(NotAuthenticated value),
    Result initial(CheckingAuthenticationStatus value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CheckingAuthenticationStatus implements AuthState {
  const factory CheckingAuthenticationStatus() = _$CheckingAuthenticationStatus;
}

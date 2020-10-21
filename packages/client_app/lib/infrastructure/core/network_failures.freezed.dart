// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'network_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NetworkFailureTearOff {
  const _$NetworkFailureTearOff();

// ignore: unused_element
  ConnectionFailure connectionFailure() {
    return const ConnectionFailure();
  }

// ignore: unused_element
  ServerFailure serverFailure() {
    return const ServerFailure();
  }
}

/// @nodoc
// ignore: unused_element
const $NetworkFailure = _$NetworkFailureTearOff();

/// @nodoc
mixin _$NetworkFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result connectionFailure(),
    @required Result serverFailure(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result connectionFailure(),
    Result serverFailure(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result connectionFailure(ConnectionFailure value),
    @required Result serverFailure(ServerFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result connectionFailure(ConnectionFailure value),
    Result serverFailure(ServerFailure value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $NetworkFailureCopyWith<$Res> {
  factory $NetworkFailureCopyWith(
          NetworkFailure value, $Res Function(NetworkFailure) then) =
      _$NetworkFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$NetworkFailureCopyWithImpl<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  _$NetworkFailureCopyWithImpl(this._value, this._then);

  final NetworkFailure _value;
  // ignore: unused_field
  final $Res Function(NetworkFailure) _then;
}

/// @nodoc
abstract class $ConnectionFailureCopyWith<$Res> {
  factory $ConnectionFailureCopyWith(
          ConnectionFailure value, $Res Function(ConnectionFailure) then) =
      _$ConnectionFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectionFailureCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res>
    implements $ConnectionFailureCopyWith<$Res> {
  _$ConnectionFailureCopyWithImpl(
      ConnectionFailure _value, $Res Function(ConnectionFailure) _then)
      : super(_value, (v) => _then(v as ConnectionFailure));

  @override
  ConnectionFailure get _value => super._value as ConnectionFailure;
}

/// @nodoc
class _$ConnectionFailure implements ConnectionFailure {
  const _$ConnectionFailure();

  @override
  String toString() {
    return 'NetworkFailure.connectionFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ConnectionFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result connectionFailure(),
    @required Result serverFailure(),
  }) {
    assert(connectionFailure != null);
    assert(serverFailure != null);
    return connectionFailure();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result connectionFailure(),
    Result serverFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (connectionFailure != null) {
      return connectionFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result connectionFailure(ConnectionFailure value),
    @required Result serverFailure(ServerFailure value),
  }) {
    assert(connectionFailure != null);
    assert(serverFailure != null);
    return connectionFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result connectionFailure(ConnectionFailure value),
    Result serverFailure(ServerFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (connectionFailure != null) {
      return connectionFailure(this);
    }
    return orElse();
  }
}

abstract class ConnectionFailure implements NetworkFailure {
  const factory ConnectionFailure() = _$ConnectionFailure;
}

/// @nodoc
abstract class $ServerFailureCopyWith<$Res> {
  factory $ServerFailureCopyWith(
          ServerFailure value, $Res Function(ServerFailure) then) =
      _$ServerFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerFailureCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res>
    implements $ServerFailureCopyWith<$Res> {
  _$ServerFailureCopyWithImpl(
      ServerFailure _value, $Res Function(ServerFailure) _then)
      : super(_value, (v) => _then(v as ServerFailure));

  @override
  ServerFailure get _value => super._value as ServerFailure;
}

/// @nodoc
class _$ServerFailure implements ServerFailure {
  const _$ServerFailure();

  @override
  String toString() {
    return 'NetworkFailure.serverFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result connectionFailure(),
    @required Result serverFailure(),
  }) {
    assert(connectionFailure != null);
    assert(serverFailure != null);
    return serverFailure();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result connectionFailure(),
    Result serverFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverFailure != null) {
      return serverFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result connectionFailure(ConnectionFailure value),
    @required Result serverFailure(ServerFailure value),
  }) {
    assert(connectionFailure != null);
    assert(serverFailure != null);
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result connectionFailure(ConnectionFailure value),
    Result serverFailure(ServerFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class ServerFailure implements NetworkFailure {
  const factory ServerFailure() = _$ServerFailure;
}

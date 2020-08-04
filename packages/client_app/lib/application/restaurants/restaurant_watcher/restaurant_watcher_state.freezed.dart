// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'restaurant_watcher_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RestaurantWatcherStateTearOff {
  const _$RestaurantWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _Loaded loaded(Either<RestaurantFailure, KtList<Restaurant>> restaurants) {
    return _Loaded(
      restaurants,
    );
  }

// ignore: unused_element
  _Failure failure(NetworkFailure failure) {
    return _Failure(
      failure,
    );
  }
}

// ignore: unused_element
const $RestaurantWatcherState = _$RestaurantWatcherStateTearOff();

mixin _$RestaurantWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required
        Result loaded(
            Either<RestaurantFailure, KtList<Restaurant>> restaurants),
    @required Result failure(NetworkFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loaded(Either<RestaurantFailure, KtList<Restaurant>> restaurants),
    Result failure(NetworkFailure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loaded(_Loaded value),
    @required Result failure(_Failure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loaded(_Loaded value),
    Result failure(_Failure value),
    @required Result orElse(),
  });
}

abstract class $RestaurantWatcherStateCopyWith<$Res> {
  factory $RestaurantWatcherStateCopyWith(RestaurantWatcherState value,
          $Res Function(RestaurantWatcherState) then) =
      _$RestaurantWatcherStateCopyWithImpl<$Res>;
}

class _$RestaurantWatcherStateCopyWithImpl<$Res>
    implements $RestaurantWatcherStateCopyWith<$Res> {
  _$RestaurantWatcherStateCopyWithImpl(this._value, this._then);

  final RestaurantWatcherState _value;
  // ignore: unused_field
  final $Res Function(RestaurantWatcherState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res>
    extends _$RestaurantWatcherStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'RestaurantWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required
        Result loaded(
            Either<RestaurantFailure, KtList<Restaurant>> restaurants),
    @required Result failure(NetworkFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loaded != null);
    assert(failure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loaded(Either<RestaurantFailure, KtList<Restaurant>> restaurants),
    Result failure(NetworkFailure failure),
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
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loaded(_Loaded value),
    @required Result failure(_Failure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loaded != null);
    assert(failure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loaded(_Loaded value),
    Result failure(_Failure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RestaurantWatcherState {
  const factory _Initial() = _$_Initial;
}

abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

class __$LoadInProgressCopyWithImpl<$Res>
    extends _$RestaurantWatcherStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'RestaurantWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required
        Result loaded(
            Either<RestaurantFailure, KtList<Restaurant>> restaurants),
    @required Result failure(NetworkFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loaded != null);
    assert(failure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loaded(Either<RestaurantFailure, KtList<Restaurant>> restaurants),
    Result failure(NetworkFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loaded(_Loaded value),
    @required Result failure(_Failure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loaded != null);
    assert(failure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loaded(_Loaded value),
    Result failure(_Failure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements RestaurantWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({Either<RestaurantFailure, KtList<Restaurant>> restaurants});
}

class __$LoadedCopyWithImpl<$Res>
    extends _$RestaurantWatcherStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object restaurants = freezed,
  }) {
    return _then(_Loaded(
      restaurants == freezed
          ? _value.restaurants
          : restaurants as Either<RestaurantFailure, KtList<Restaurant>>,
    ));
  }
}

class _$_Loaded implements _Loaded {
  const _$_Loaded(this.restaurants) : assert(restaurants != null);

  @override
  final Either<RestaurantFailure, KtList<Restaurant>> restaurants;

  @override
  String toString() {
    return 'RestaurantWatcherState.loaded(restaurants: $restaurants)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.restaurants, restaurants) ||
                const DeepCollectionEquality()
                    .equals(other.restaurants, restaurants)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(restaurants);

  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required
        Result loaded(
            Either<RestaurantFailure, KtList<Restaurant>> restaurants),
    @required Result failure(NetworkFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loaded != null);
    assert(failure != null);
    return loaded(restaurants);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loaded(Either<RestaurantFailure, KtList<Restaurant>> restaurants),
    Result failure(NetworkFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(restaurants);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loaded(_Loaded value),
    @required Result failure(_Failure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loaded != null);
    assert(failure != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loaded(_Loaded value),
    Result failure(_Failure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements RestaurantWatcherState {
  const factory _Loaded(
      Either<RestaurantFailure, KtList<Restaurant>> restaurants) = _$_Loaded;

  Either<RestaurantFailure, KtList<Restaurant>> get restaurants;
  _$LoadedCopyWith<_Loaded> get copyWith;
}

abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({NetworkFailure failure});

  $NetworkFailureCopyWith<$Res> get failure;
}

class __$FailureCopyWithImpl<$Res>
    extends _$RestaurantWatcherStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_Failure(
      failure == freezed ? _value.failure : failure as NetworkFailure,
    ));
  }

  @override
  $NetworkFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $NetworkFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

class _$_Failure implements _Failure {
  const _$_Failure(this.failure) : assert(failure != null);

  @override
  final NetworkFailure failure;

  @override
  String toString() {
    return 'RestaurantWatcherState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required
        Result loaded(
            Either<RestaurantFailure, KtList<Restaurant>> restaurants),
    @required Result failure(NetworkFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loaded != null);
    assert(failure != null);
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loaded(Either<RestaurantFailure, KtList<Restaurant>> restaurants),
    Result failure(NetworkFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loaded(_Loaded value),
    @required Result failure(_Failure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loaded != null);
    assert(failure != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loaded(_Loaded value),
    Result failure(_Failure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements RestaurantWatcherState {
  const factory _Failure(NetworkFailure failure) = _$_Failure;

  NetworkFailure get failure;
  _$FailureCopyWith<_Failure> get copyWith;
}

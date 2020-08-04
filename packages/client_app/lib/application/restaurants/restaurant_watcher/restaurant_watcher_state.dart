import 'package:client_app/domain/restaurants/entities/restaurant.dart';
import 'package:client_app/domain/restaurants/failure/restaurant_failure.dart';
import 'package:client_app/infrastructure/core/network_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'restaurant_watcher_state.freezed.dart';

@freezed
abstract class RestaurantWatcherState with _$RestaurantWatcherState {
  const factory RestaurantWatcherState.initial() = _Initial;
  const factory RestaurantWatcherState.loadInProgress() = _LoadInProgress;
  const factory RestaurantWatcherState.loaded(
    Either<RestaurantFailure, KtList<Restaurant>> restaurants,
  ) = _Loaded;
  const factory RestaurantWatcherState.failure(
    NetworkFailure failure,
  ) = _Failure;
}

import 'package:bloc/bloc.dart';
import 'package:client_app/domain/restaurants/entities/restaurant.dart';
import 'package:client_app/domain/restaurants/failure/restaurant_failure.dart';
import 'package:client_app/domain/restaurants/repositories/i_restaurant_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import './restaurant_watcher_state.dart';

@injectable
class RestaurantWatcherCubit extends Cubit<RestaurantWatcherState> {
  final IRestaurantRepository restaurantRepository;

  RestaurantWatcherCubit(this.restaurantRepository)
      : super(const RestaurantWatcherState.initial());

  Future<void> watchStarted() async {
    emit(const RestaurantWatcherState.loadInProgress());
    restaurantRepository
        .watchRestaurants()
        .listen((r) => restaurantReceived(r));
  }

  Future<void> restaurantReceived(
      Either<RestaurantFailure, KtList<Restaurant>> restaurants) async {
    emit(RestaurantWatcherState.loaded(restaurants));
  }
}

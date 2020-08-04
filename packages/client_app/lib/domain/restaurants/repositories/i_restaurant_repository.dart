import 'package:client_app/domain/restaurants/entities/restaurant.dart';
import 'package:client_app/domain/restaurants/failure/restaurant_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

abstract class IRestaurantRepository {
  Stream<Either<RestaurantFailure, KtList<Restaurant>>> watchRestaurants();
}

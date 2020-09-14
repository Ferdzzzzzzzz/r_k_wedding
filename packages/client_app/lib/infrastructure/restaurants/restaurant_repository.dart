import 'package:client_app/domain/restaurants/entities/restaurant.dart';
import 'package:client_app/domain/restaurants/failure/restaurant_failure.dart';
import 'package:client_app/domain/restaurants/repositories/i_restaurant_repository.dart';
import 'package:client_app/infrastructure/restaurants/restaurant_dto.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:client_app/infrastructure/core/firestore_helpers.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IRestaurantRepository)
class RestaurantRepository implements IRestaurantRepository {
  final FirebaseFirestore _firestore;

  RestaurantRepository(this._firestore);

  @override
  Stream<Either<RestaurantFailure, KtList<Restaurant>>>
      watchRestaurants() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.restaurantCollection
        .snapshots()
        .map(
          (snapshot) => right<RestaurantFailure, KtList<Restaurant>>(
            snapshot.docs
                .map((doc) => RestaurantDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith(
          (dynamic _) => left(const RestaurantFailure.unexpected()),
        );
  }
}

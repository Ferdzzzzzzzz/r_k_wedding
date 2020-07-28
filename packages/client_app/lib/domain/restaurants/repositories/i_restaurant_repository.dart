import 'package:client_app/domain/restaurants/entities/restaurant.dart';
import 'package:kt_dart/collection.dart';

abstract class IRestaurantRepository {
  //watch restaurants

  Stream<KtList<Restaurant>> watchRestaurants();
}

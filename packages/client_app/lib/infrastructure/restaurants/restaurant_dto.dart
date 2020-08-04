import 'package:client_app/domain/auth/value_objects/unique_id.dart';
import 'package:client_app/domain/restaurants/entities/restaurant.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant_dto.freezed.dart';
part 'restaurant_dto.g.dart';

@freezed
abstract class RestaurantDto implements _$RestaurantDto {
  const factory RestaurantDto({
    @required String id,
    @required String name,
    @required String description,
    @required String bookingUrl,
  }) = _RestaurantDto;

  const RestaurantDto._();

  Restaurant toDomain() {
    return Restaurant(
      id: UniqueId.fromUniqueString(id),
      name: name,
      description: description,
      bookingUrl: bookingUrl,
    );
  }

  factory RestaurantDto.fromJson(Map<String, dynamic> json) =>
      _$RestaurantDtoFromJson(json);

  factory RestaurantDto.fromFirestore(DocumentSnapshot doc) {
    return RestaurantDto.fromJson(doc.data).copyWith(
      id: doc.documentID,
    );
  }
}

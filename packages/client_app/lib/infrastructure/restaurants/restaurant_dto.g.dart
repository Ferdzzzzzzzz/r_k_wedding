// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RestaurantDto _$_$_RestaurantDtoFromJson(Map<String, dynamic> json) {
  return _$_RestaurantDto(
    id: json['id'] as String,
    name: json['name'] as String,
    description: json['description'] as String,
    bookingUrl: json['bookingUrl'] as String,
  );
}

Map<String, dynamic> _$_$_RestaurantDtoToJson(_$_RestaurantDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'bookingUrl': instance.bookingUrl,
    };

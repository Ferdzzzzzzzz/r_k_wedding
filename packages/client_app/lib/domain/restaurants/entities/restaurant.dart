import 'package:client_app/domain/auth/value_objects/unique_id.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant.freezed.dart';

@freezed
abstract class Restaurant with _$Restaurant {
  const factory Restaurant({
    @required UniqueId id,
    @required String name,
    @required String description,
    @required String bookingUrl,
  }) = _Restaurant;
}

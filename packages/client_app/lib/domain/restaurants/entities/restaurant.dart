import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant.freezed.dart';

@freezed
abstract class Restaurant with _$Restaurant {
  const factory Restaurant({
    @required String id,
    @required String name,
    @required String description,
    @required String bookingUrl,
  }) = _Restaurant;
}

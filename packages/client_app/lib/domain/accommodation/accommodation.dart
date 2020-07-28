import 'package:freezed_annotation/freezed_annotation.dart';

part 'accommodation.freezed.dart';

@freezed
abstract class Accommodation with _$Accommodation {
  const factory Accommodation({
    @required String id,
    @required String name,
    @required String description,
    @required String bookingUrl,
  }) = _Accommodation;
}

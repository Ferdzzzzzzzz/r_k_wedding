import 'package:freezed_annotation/freezed_annotation.dart';

part 'wine_farm.freezed.dart';

@freezed
abstract class WineFarm with _$WineFarm {
  const factory WineFarm({
    @required String id,
    @required String name,
    @required String description,
    @required String bookingUrl,
  }) = _WineFarm;
}

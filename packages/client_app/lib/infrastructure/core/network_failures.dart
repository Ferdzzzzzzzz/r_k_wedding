import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_failures.freezed.dart';

@freezed
abstract class NetworkFailure with _$NetworkFailure {
  const factory NetworkFailure.connectionFailure() = ConnectionFailure;
  const factory NetworkFailure.serverFailure() = ServerFailure;
}

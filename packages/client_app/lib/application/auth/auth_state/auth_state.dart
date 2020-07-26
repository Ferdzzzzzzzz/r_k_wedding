import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.authenticated() = Authenticated;
  const factory AuthState.notAuthenticated() = NotAuthenticated;
  const factory AuthState.initial() = CheckingAuthenticationStatus;
}

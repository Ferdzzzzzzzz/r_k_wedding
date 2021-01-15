import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rsvp_form_state.freezed.dart';

@freezed
abstract class RsvpFormState with _$RsvpFormState {
  const factory RsvpFormState({
    @required String names,
    @required Option<bool> optionAccepts,
    @required String dietryRequirements,
    @required bool canSubmit,
    @required bool isSubmitting,
    @required Option<Either<RsvpFailure, Unit>> optionEitherFailureOrUnit,
  }) = _RsvpFormState;

  factory RsvpFormState.initial() => RsvpFormState(
        names: "",
        optionAccepts: none(),
        dietryRequirements: "",
        canSubmit: false,
        isSubmitting: false,
        optionEitherFailureOrUnit: none(),
      );
}

@freezed
abstract class RsvpFailure with _$RsvpFailure {
  const factory RsvpFailure.socket() = SocketFailure;
  const factory RsvpFailure.format() = FormatFailure;
}

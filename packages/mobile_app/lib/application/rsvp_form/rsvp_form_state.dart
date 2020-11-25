import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rsvp_form_state.freezed.dart';

enum Rsvp { accepts, declines }

@freezed
abstract class RsvpFormState with _$RsvpFormState {
  const factory RsvpFormState({
    @required String names,
    @required Option<Rsvp> optionRSVP,
    @required String dietryRequirements,
    @required bool canSubmit,
    @required bool isSubmitting,
  }) = _RsvpFormState;

  factory RsvpFormState.initial() => RsvpFormState(
        names: "",
        optionRSVP: none(),
        dietryRequirements: "",
        canSubmit: false,
        isSubmitting: false,
      );
}

import 'package:bloc/bloc.dart';
import './rsvp_form_state.dart';

class RsvpformCubit extends Cubit<RsvpFormState> {
  RsvpformCubit() : super(RsvpFormState.initial());

  Future<void> changeNames() async {}

  Future<void> changeDietryRequirements() async {}

  Future<void> changeRsvp() async {}

  Future<void> submitForm() async {}
}

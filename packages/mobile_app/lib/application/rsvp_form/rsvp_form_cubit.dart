import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:bloc/bloc.dart';
import './rsvp_form_state.dart';

class RsvpformCubit extends Cubit<RsvpFormState> {
  RsvpformCubit() : super(RsvpFormState.initial());

  Future<void> changeNames() async {}

  Future<void> changeDietryRequirements() async {}

  Future<void> changeRsvp() async {}

  Future<void> submitForm() async {
    emit(state.copyWith(
      isSubmitting: true,
    ));

    final httpClient = http.Client();

    final rsvp = state.optionRSVP.fold(
      () {
        throw Error();
      },
      (rsvp) => rsvp,
    );

    final body = {
      "names": state.names,
      "accept": rsvp == Rsvp.accepts,
      "extra": state.dietryRequirements,
    };

    try {
      final response = await httpClient.post(
        "https://europe-west2-rnkwedding.cloudfunctions.net/SheetEntry",
        body: jsonEncode(body),
      );

      if (response.statusCode != 200) throw ServerException();

      emit(state.copyWith(
        optionEitherFailureOrUnit: some(const Right(unit)),
      ));
    } on SocketException {
      emit(state.copyWith(
          optionEitherFailureOrUnit: some(const Left(RsvpFailure.socket()))));
    }
  }
}

class ServerException implements Exception {}

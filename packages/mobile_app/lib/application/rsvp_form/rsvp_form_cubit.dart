import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:bloc/bloc.dart';
import './rsvp_form_state.dart';

class RsvpformCubit extends Cubit<RsvpFormState> {
  RsvpformCubit() : super(RsvpFormState.initial());

  Future<void> changeNames(String names) async {
    final canSubmit = _checkCanSubmit(names, state.optionAccepts);
    emit(state.copyWith(
      canSubmit: canSubmit,
      names: names,
    ));
  }

  Future<void> changeDietryRequirements(String s) async {
    emit(state.copyWith(
      dietryRequirements: s,
    ));
  }

  Future<void> changeRsvp({@required bool accepts}) async {
    final canSubmit = _checkCanSubmit(state.names, some(accepts));
    emit(state.copyWith(
      canSubmit: canSubmit,
      optionAccepts: some(accepts),
    ));
  }

  Future<void> submitForm() async {
    emit(state.copyWith(
      isSubmitting: true,
    ));

    final httpClient = http.Client();

    final acceptInvite = state.optionAccepts.fold(
      () {
        throw Error();
      },
      (acceptInvite) => acceptInvite,
    );

    final body = {
      "names": state.names,
      "accept": acceptInvite,
      "extra": state.dietryRequirements,
    };

    try {
      final response = await httpClient.post(
        "https://europe-west2-rnkwedding.cloudfunctions.net/SheetEntry",
        body: jsonEncode(body),
        headers: {
          "Content-Type": "application/json",
        },
      );

      if (response.statusCode != 200) throw ServerException();

      emit(state.copyWith(
        optionEitherFailureOrUnit: some(const Right(unit)),
        names: "",
        optionAccepts: none(),
        dietryRequirements: "",
        isSubmitting: false,
      ));
    } catch (e) {
      emit(state.copyWith(
        optionEitherFailureOrUnit: some(const Left(RsvpFailure.socket())),
        isSubmitting: false,
      ));
    }
  }

  Future<void> finishSubmit() async {
    emit(state.copyWith(
      optionEitherFailureOrUnit: none(),
    ));
  }

  bool _checkCanSubmit(
    String names,
    Option<bool> optionAccepts,
  ) {
    if (names.isEmpty) return false;
    if (optionAccepts.isNone()) return false;

    return true;
  }
}

class ServerException implements Exception {}

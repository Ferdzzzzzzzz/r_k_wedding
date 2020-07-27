import 'package:bloc/bloc.dart';
import 'package:client_app/domain/auth/failures/auth_failure.dart';
import 'package:client_app/domain/auth/facades/i_auth_facade.dart';
import 'package:client_app/domain/auth/value_objects/email_address.dart';
import 'package:client_app/domain/auth/value_objects/password.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import './sign_in_form_state.dart';

@injectable
class SignInFormCubit extends Cubit<SignInFormState> {
  final IAuthFacade _authFacade;

  SignInFormCubit(this._authFacade) : super(SignInFormState.initial());

  Future<void> emailChanged(String email) async {
    final updatedState = state.copyWith(
      emailAddress: EmailAddress(email),
      authFailureOrSuccessOption: none(),
    );
    emit(updatedState);
  }

  Future<void> passwordChanged(String password) async {
    final updatedState = state.copyWith(
      password: Password(password),
      authFailureOrSuccessOption: none(),
    );
    emit(updatedState);
  }

  Future<void> signInWithEmailAndPasswordPressed() async {
    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      emit(_submittingState(state));

      final failureOrSuccess = await _emailPasswordSignIn();
      emit(_mapAuthResultToState(failureOrSuccess));
    }
  }

  SignInFormState _submittingState(SignInFormState state) {
    return state.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    );
  }

  Future<Either<AuthFailure, Unit>> _emailPasswordSignIn() async {
    return _authFacade.signInWithEmailAndPassword(
      emailAddress: state.emailAddress,
      password: state.password,
    );
  }

  SignInFormState _mapAuthResultToState(
    Either<AuthFailure, Unit> failureOrSuccess,
  ) {
    return state.copyWith(
      isSubmitting: false,
      authFailureOrSuccessOption: some(failureOrSuccess),
    );
  }
}

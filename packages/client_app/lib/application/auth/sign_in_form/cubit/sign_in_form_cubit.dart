import 'package:bloc/bloc.dart';
import 'package:client_app/domain/auth/i_auth_facade.dart';

import './sign_in_form_state.dart';

class SignInFormCubit extends Cubit<SignInFormState> {
  final IAuthFacade _authFacade;

  SignInFormCubit(this._authFacade) : super(SignInFormState.initial());

  Future<void> emailChanged(String email) async {}
  Future<void> passwordChanged(String password) async {}

  Future<void> signInWithEmailAndPasswordPressed(String password) async {}
  Future<void> signInWithGooglePressed(String password) async {}
}

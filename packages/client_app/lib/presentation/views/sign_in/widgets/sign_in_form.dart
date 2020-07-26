import 'package:client_app/application/auth/sign_in_form/sign_in_form_cubit.dart';
import 'package:client_app/application/auth/sign_in_form/sign_in_form_state.dart';
import 'package:client_app/domain/auth/failures/auth_failure.dart';
import 'package:client_app/presentation/core/side_effects/snack_bar_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import "package:build_context/build_context.dart";

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormCubit, SignInFormState>(
      listener: _handleListener,
      builder: _renderForm,
    );
  }

  Widget _renderForm(BuildContext context, SignInFormState state) {
    final maxWidth = context.mediaQuerySize.width;
    final maxHeight = context.mediaQuerySize.height;
    final signInCubit = context.bloc<SignInFormCubit>();

    return Center(
      child: SizedBox(
        height: maxHeight * 0.5,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: maxWidth * 0.1),
          child: Form(
            autovalidate: state.showErrorMessages,
            child: ListView(
              children: <Widget>[
                _renderEmailField(signInCubit),
                _renderPasswordField(signInCubit),
                _renderSignInButton(signInCubit),
                _renderGoogleSignInButton(signInCubit, maxWidth),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _renderEmailField(SignInFormCubit signInCubit) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(Ionicons.md_mail),
        labelText: 'Email',
      ),
      autocorrect: false,
      onChanged: (value) => signInCubit.emailChanged(value),
      validator: (value) => signInCubit.state.emailAddress.value.fold(
        (f) => f.maybeMap(
          invalidEmail: (_) => 'Invalid Email',
          orElse: () => null,
        ),
        (r) => null,
      ),
    );
  }

  Widget _renderPasswordField(SignInFormCubit signInCubit) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(Ionicons.md_lock),
        labelText: 'Pin',
      ),
      autocorrect: false,
      keyboardType: TextInputType.number,
      obscureText: true,
      maxLength: 4,
      onChanged: (value) => signInCubit.passwordChanged(value),
      validator: (value) => signInCubit.state.password.value.fold(
        (f) => f.maybeMap(
          invalidPassword: (_) => 'Short Pin',
          orElse: () => null,
        ),
        (r) => null,
      ),
    );
  }

  Widget _renderSignInButton(SignInFormCubit signInCubit) {
    return FlatButton(
      color: Colors.blue,
      onPressed: () => signInCubit.signInWithEmailAndPasswordPressed(),
      child: const Text('Sign In'),
    );
  }

  Widget _renderGoogleSignInButton(
      SignInFormCubit signInCubit, double maxWidth) {
    return Container(
      width: maxWidth * 0.5,
      child: RaisedButton(
        padding: EdgeInsets.symmetric(horizontal: maxWidth * 0.2),
        onPressed: () => signInCubit.signInWithGooglePressed(),
        color: Colors.lightBlue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              FontAwesome.google,
              color: Colors.white,
            ),
            const Spacer(),
            const Text('Sign in with Google')
          ],
        ),
      ),
    );
  }

  void _handleListener(BuildContext context, SignInFormState state) {
    state.authFailureOrSuccessOption.fold(
      () => null,
      (either) => either.fold(
        (f) => snackBarError(
          context,
          message: _errorMessage(f),
        ),
        (r) => null,
      ),
    );
  }

  String _errorMessage(AuthFailure f) {
    return f.map(
      cancelledByUser: (_) => 'Cancelled',
      serverError: (_) => 'Network Error',
      invalidEmailPasswordCombination: (_) =>
          'Invalid Email and Password combination',
    );
  }
}

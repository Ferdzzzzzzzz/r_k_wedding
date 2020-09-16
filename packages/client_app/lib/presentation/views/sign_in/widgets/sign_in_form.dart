import 'package:auto_size_text/auto_size_text.dart';
import 'package:client_app/application/auth/auth_state/auth_cubit.dart';
import 'package:client_app/application/auth/sign_in_form/sign_in_form_cubit.dart';
import 'package:client_app/application/auth/sign_in_form/sign_in_form_state.dart';
import 'package:client_app/domain/auth/failures/auth_failure.dart';
import 'package:client_app/gen/colors.gen.dart';
import 'package:client_app/presentation/core/side_effects/snack_bar_helpers.dart';
import 'package:client_app/presentation/views/sign_in/widgets/decoration_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import "package:build_context/build_context.dart";
import 'package:google_fonts/google_fonts.dart';

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

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: maxWidth * 0.1,
        vertical: maxHeight * 0.25,
      ),
      child: Container(
        height: maxHeight * 0.4,
        child: ListView(
          children: [
            _renderEmailField(signInCubit),
            _renderPasswordField(signInCubit),
            SizedBox(height: maxHeight * 0.02),
            _renderSignInButton(context, signInCubit),
          ],
        ),
      ),
    );
  }

  Widget _renderEmailField(SignInFormCubit signInCubit) {
    return TextFormField(
      decoration: signInInputDecoration(hintText: 'email'),
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
      decoration: signInInputDecoration(hintText: 'pin'),
      autocorrect: false,
      keyboardType: TextInputType.number,
      obscureText: true,
      maxLength: 6,
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

  Widget _renderSignInButton(
    BuildContext context,
    SignInFormCubit signInCubit,
  ) {
    final maxH = context.mediaQuerySize.height;
    final maxW = context.mediaQuerySize.width;
    return BlocBuilder<SignInFormCubit, SignInFormState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            signInCubit.signInWithEmailAndPasswordPressed();
          },
          child: Container(
            height: maxH * 0.08,
            width: maxW * 0.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: ColorName.lightPink,
            ),
            child: state.isSubmitting
                ? _renderLoadingIndicator(maxW)
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AutoSizeText(
                        'Login',
                        style: GoogleFonts.openSans(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: ColorName.darkGreen,
                        ),
                        maxLines: 1,
                      ),
                      const Icon(Icons.arrow_forward),
                    ],
                  ),
          ),
        );
      },
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
        (r) {
          final authCubit = context.bloc<AuthCubit>();
          authCubit.isAuthenticated();
        },
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

  Widget _renderLoadingIndicator(double maxW) {
    return Center(
      child: SizedBox(
        width: maxW * 0.05,
        height: maxW * 0.05,
        child: const CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          strokeWidth: 2,
        ),
      ),
    );
  }
}

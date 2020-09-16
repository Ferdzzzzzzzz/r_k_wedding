import 'package:client_app/application/auth/sign_in_form/sign_in_form_cubit.dart';
import 'package:client_app/gen/assets.gen.dart';
import 'package:client_app/injection.dart';
import 'package:client_app/presentation/views/sign_in/widgets/sign_in_form.dart';
import 'package:client_app/presentation/views/sign_in/widgets/sign_in_form_background_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import "package:build_context/build_context.dart";

class SignInView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlocProvider(
        create: (_) => getIt<SignInFormCubit>(),
        child: Stack(
          children: [
            SignInFormBackGroundAnimation(),
            _renderSignInForm(),
            _renderLogo(context),
            // _renderLoginTitle(context),
          ],
        ),
      ),
    );
  }

  Widget _renderSignInForm() {
    return Align(
      alignment: Alignment.topCenter,
      child: SignInForm(),
    );
  }

  Widget _renderLogo(BuildContext context) {
    final maxHeight = context.mediaQuerySize.height;

    return Padding(
      padding: EdgeInsets.only(
        top: maxHeight * 0.1,
      ),
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          width: maxHeight * 0.2,
          child: Assets.images.splash.image(),
        ),
      ),
    );
  }
}

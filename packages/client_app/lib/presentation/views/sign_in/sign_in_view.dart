import 'package:client_app/application/auth/sign_in_form/sign_in_form_cubit.dart';
import 'package:client_app/injection.dart';
import 'package:client_app/presentation/views/sign_in/widgets/sign_in_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => getIt<SignInFormCubit>(),
        child: Center(
          child: SignInPageView(),
        ),
      ),
    );
  }
}

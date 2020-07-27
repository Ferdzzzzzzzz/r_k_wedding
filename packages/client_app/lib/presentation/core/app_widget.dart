import 'package:auto_route/auto_route.dart';
import 'package:client_app/application/auth/auth_state/auth_cubit.dart';
import 'package:client_app/application/auth/auth_state/auth_state.dart';
import 'package:client_app/injection.dart';
import 'package:client_app/presentation/routes/router.gr.dart';
import 'package:client_app/presentation/splash/splash_view.dart';
import 'package:client_app/presentation/views/sign_in/sign_in_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authCubitProvider = BlocProvider(
      create: (context) => getIt<AuthCubit>()..authCheck(),
    );

    return MultiBlocProvider(
      providers: [
        authCubitProvider,
      ],
      child: MaterialApp(
        title: 'Ruben & Katie',
        home: _authLayer(context),
      ),
    );
  }

  Widget _authLayer(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return state.when(
          authenticated: () => ExtendedNavigator(router: Router()),
          notAuthenticated: () => SignInView(),
          initial: () => SplashView(),
        );
      },
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:client_app/application/auth/auth_state/auth_cubit.dart';
import 'package:client_app/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final signInCubit = context.bloc<AuthCubit>();

    return GestureDetector(
      onTap: () => signInCubit.signOut(),
      child: Container(
        color: Colors.blue,
        child: Center(
          child: GestureDetector(
            onTap: () => ExtendedNavigator.of(context).push(Routes.rsvp),
            child: const Text('Home view'),
          ),
        ),
      ),
    );
  }
}

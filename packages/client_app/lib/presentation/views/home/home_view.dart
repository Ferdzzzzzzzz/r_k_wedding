import 'package:auto_route/auto_route.dart';
import 'package:client_app/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () => ExtendedNavigator.of(context).push(Routes.rsvp),
        child: const Text('Home view'),
      ),
    );
  }
}

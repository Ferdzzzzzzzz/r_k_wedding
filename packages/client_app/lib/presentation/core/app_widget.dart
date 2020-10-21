import 'package:auto_route/auto_route.dart';
import 'package:wedding_app/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ruben & Katie',
      home: ExtendedNavigator(router: AppRouter()),
    );
  }
}

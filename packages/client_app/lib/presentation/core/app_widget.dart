import 'package:client_app/presentation/views/sign_in/sign_in_view.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ruben & Katie',
      home: SignInView(),
    );
  }
}

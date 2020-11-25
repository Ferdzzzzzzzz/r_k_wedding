import 'package:flutter/material.dart';
import 'package:mobile_app/presentation/default_scaffold.dart';

class RsvpView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const DefaultScaffold(
      title: "RSVP",
      body: Center(
        child: Text(
          "rsvp",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

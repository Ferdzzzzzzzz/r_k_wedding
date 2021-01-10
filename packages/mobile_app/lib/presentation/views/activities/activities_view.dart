import 'package:flutter/material.dart';
import 'package:wedding/presentation/default_scaffold.dart';

class ActivitiesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const DefaultScaffold(
      title: "Activities",
      body: Center(
        child: Text(
          "do some shit",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

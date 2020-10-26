import 'package:flutter/material.dart';
import 'package:wedding_app/presentation/core/default_scaffold.dart';

class ActivitiesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const DefaultScaffold(
      title: "Activities",
      body: Center(
        child: Text('activities'),
      ),
    );
  }
}

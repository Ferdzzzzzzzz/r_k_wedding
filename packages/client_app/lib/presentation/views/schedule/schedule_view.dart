import 'package:flutter/material.dart';
import 'package:wedding_app/presentation/core/default_scaffold.dart';

class ScheduleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const DefaultScaffold(
      title: "Order of the day",
      body: Center(
        child: Text('schedule'),
      ),
    );
  }
}

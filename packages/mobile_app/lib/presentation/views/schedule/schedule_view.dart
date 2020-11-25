import 'package:flutter/material.dart';
import 'package:mobile_app/presentation/default_scaffold.dart';

class ScheduleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const DefaultScaffold(
      title: "Order of the Day",
      body: Center(
        child: Text(
          "Schedule",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

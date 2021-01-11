import 'package:flutter/material.dart';
import 'package:wedding/gen/assets.gen.dart';
import 'package:wedding/presentation/default_scaffold.dart';
import 'package:wedding/core/extensions/x_context.dart';

class ScheduleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      inverted: true,
      title: "Order of the Day",
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.maxWidth * 0.05,
            vertical: context.maxHeight * 0.05,
          ),
          child: Assets.images.schedule.image(),
        ),
      ),
    );
  }
}

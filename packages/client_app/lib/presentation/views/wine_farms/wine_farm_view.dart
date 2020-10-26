import 'package:flutter/material.dart';
import 'package:wedding_app/presentation/core/default_scaffold.dart';

class WineFarmView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const DefaultScaffold(
      title: "wine farms",
      body: Center(
        child: Text('wine farm view'),
      ),
    );
  }
}

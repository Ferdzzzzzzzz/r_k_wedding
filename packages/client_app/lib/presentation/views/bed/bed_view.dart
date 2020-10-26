import 'package:flutter/material.dart';
import 'package:wedding_app/presentation/core/default_scaffold.dart';

class BedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const DefaultScaffold(
      title: "accommodation",
      body: Center(
        child: Text('bnb'),
      ),
    );
  }
}

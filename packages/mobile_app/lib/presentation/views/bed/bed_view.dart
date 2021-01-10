import 'package:flutter/material.dart';
import 'package:wedding/presentation/default_scaffold.dart';

class BedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const DefaultScaffold(
      title: "Accomodation",
      body: Center(
        child: Text(
          "Bed",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

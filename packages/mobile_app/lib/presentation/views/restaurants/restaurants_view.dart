import 'package:flutter/material.dart';
import 'package:wedding/presentation/default_scaffold.dart';

class RestaurantView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const DefaultScaffold(
      title: "Restaurants",
      body: Center(
        child: Text(
          "food",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

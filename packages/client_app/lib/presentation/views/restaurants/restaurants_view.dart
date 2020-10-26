import 'package:flutter/material.dart';
import 'package:wedding_app/presentation/core/default_scaffold.dart';

class RestaurantView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const DefaultScaffold(
      title: "Restaurants",
      body: Center(
        child: Text('restaurants'),
      ),
    );
  }
}

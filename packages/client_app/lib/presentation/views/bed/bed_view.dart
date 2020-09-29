import 'package:flutter/material.dart';
import 'package:wedding_app/presentation/core/back_button.dart';

class BedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomBackButton(),
          const Center(
            child: Text('bnb'),
          ),
        ],
      ),
    );
  }
}

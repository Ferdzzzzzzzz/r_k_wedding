import 'package:flutter/material.dart';
import 'package:wedding/core/extensions/x_context.dart';

class RsvpForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      height: context.maxHeight * 0.5,
      width: double.infinity,
      child: _RenderForm(),
    );
  }
}

class _RenderForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Name/s:"),
          Text("Input"),
          Text("Accpets:"),
          Text("Declines:"),
          Text("Diet:"),
          Text("Input"),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:wedding_app/gen/assets.gen.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Assets.images.splash.image(),
      ),
    );
  }
}

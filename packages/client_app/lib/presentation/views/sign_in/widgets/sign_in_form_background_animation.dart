import 'package:client_app/presentation/views/sign_in/widgets/background_painter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SignInFormBackGroundAnimation extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final _controller = useAnimationController(
      duration: const Duration(seconds: 1),
    );

    return SizedBox.expand(
      child: CustomPaint(
        painter: BackgroundPainter(animation: _controller.view),
      ),
    );
  }
}

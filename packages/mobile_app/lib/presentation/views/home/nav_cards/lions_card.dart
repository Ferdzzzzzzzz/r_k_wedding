import 'package:wedding/gen/assets.gen.dart';
import 'package:wedding/presentation/router/app_router.gr.dart';
import 'package:wedding/presentation/views/home/nav_cards/generic_card.dart';
import 'package:flutter/material.dart';
import 'package:wedding/core/extensions/x_context.dart';
import 'package:auto_route/auto_route.dart';

class LionsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GenericCard(
      _renderBody(context),
      'Lions Tour',
      () => context.navigator.push(Routes.lionsView),
    );
  }

  Widget _renderBody(BuildContext context) {
    final maxWidth = context.maxWidth;

    return Center(
      child: SizedBox(
        width: maxWidth * 0.18,
        child: Assets.images.rugbyBall.image(
          color: Colors.white,
        ),
      ),
    );
  }
}

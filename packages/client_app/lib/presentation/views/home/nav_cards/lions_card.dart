import 'package:wedding_app/presentation/core/wedding_app_icons.dart';
import 'package:wedding_app/presentation/routes/router.gr.dart';
import 'package:wedding_app/presentation/views/home/nav_cards/generic_card.dart';
import 'package:flutter/material.dart';
import 'package:wedding_app/core/extensions/x_context.dart';
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

    return Icon(
      WeddingAppIcons.lionIcon,
      color: Colors.white,
      size: maxWidth * 0.2,
    );
  }
}

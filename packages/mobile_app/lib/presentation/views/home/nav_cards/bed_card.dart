import 'package:mobile_app/core/wedding_app_icons.dart';
import 'package:mobile_app/presentation/router/app_router.gr.dart';
import 'package:mobile_app/presentation/views/home/nav_cards/generic_card.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/core/extensions/x_context.dart';
import 'package:auto_route/auto_route.dart';

class BedCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GenericCard(
      _renderBody(context),
      'Accomodation',
      () => context.navigator.push(Routes.bedView),
    );
  }

  Widget _renderBody(BuildContext context) {
    final maxWidth = context.maxWidth;

    return Icon(
      WeddingAppIcons.accommIcon,
      color: Colors.white,
      size: maxWidth * 0.15,
    );
  }
}

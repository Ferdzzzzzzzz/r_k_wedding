import 'package:wedding/gen/assets.gen.dart';
import 'package:wedding/presentation/router/app_router.gr.dart';
import 'package:wedding/presentation/views/home/nav_cards/generic_card.dart';
import 'package:flutter/material.dart';
import 'package:wedding/core/extensions/x_context.dart';
import 'package:auto_route/auto_route.dart';

class MountainCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GenericCard(
      _renderBody(context),
      'Activities',
      () => context.navigator.push(Routes.activitiesView),
    );
  }

  Widget _renderBody(BuildContext context) {
    final maxWidth = context.maxWidth;

    return Center(
      child: SizedBox(
        width: maxWidth * 0.3,
        child: Assets.images.tableMountain.image(
          color: Colors.white,
        ),
      ),
    );
  }
}

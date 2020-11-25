import 'package:mobile_app/gen/assets.gen.dart';
import 'package:mobile_app/presentation/router/app_router.gr.dart';
import 'package:mobile_app/presentation/views/home/nav_cards/generic_card.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/core/extensions/x_context.dart';
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
        width: maxWidth * 0.28,
        child: Assets.images.tableMountain.image(
          color: Colors.white,
        ),
      ),
    );
  }
}

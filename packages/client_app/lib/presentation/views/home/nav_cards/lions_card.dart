import 'package:client_app/gen/assets.gen.dart';
import 'package:client_app/presentation/views/home/nav_cards/generic_card.dart';
import 'package:flutter/material.dart';
import 'package:build_context/build_context.dart';

class LionsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GenericCard(
      _renderBody(context),
      'lions tour',
      () => print('lions tour'),
    );
  }

  Widget _renderBody(BuildContext context) {
    final maxWidth = context.mediaQuerySize.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: maxWidth * 0.1,
              child: Assets.images.springbokBlack.image(),
            ),
            Container(
              width: maxWidth * 0.1,
              child: Assets.images.lionBlack.image(),
            ),
          ],
        ),
      ],
    );
  }
}

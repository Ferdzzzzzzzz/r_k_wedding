import 'package:client_app/gen/assets.gen.dart';
import 'package:client_app/presentation/views/home/nav_cards/generic_card.dart';
import 'package:flutter/material.dart';
import 'package:build_context/build_context.dart';

class WineCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GenericCard(
      _renderBody(context),
      'wine farms',
      () => print('wine farms'),
    );
  }

  Widget _renderBody(BuildContext context) {
    final maxWidth = context.mediaQuerySize.width;

    return Center(
      child: Container(
        width: maxWidth * 0.3,
        child: Assets.images.wineIcon.image(),
      ),
    );
  }
}

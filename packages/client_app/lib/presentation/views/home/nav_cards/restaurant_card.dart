import 'package:client_app/gen/assets.gen.dart';
import 'package:client_app/presentation/views/home/nav_cards/generic_card.dart';
import 'package:flutter/material.dart';
import 'package:build_context/build_context.dart';

class RestaurantCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final maxWidth = context.mediaQuerySize.width;

    return Transform.translate(
      offset: Offset(
        -maxWidth * 0,
        0,
      ),
      child: GenericCard(
        _renderBody(context),
        'restaurants',
        () => print('eat'),
      ),
    );
  }

  Widget _renderBody(BuildContext context) {
    final maxWidth = context.mediaQuerySize.width;

    return Center(
      child: Container(
        width: maxWidth * 0.12,
        child: Assets.images.dinnerIcon.image(),
      ),
    );
  }
}

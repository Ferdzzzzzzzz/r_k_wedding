import 'package:wedding_app/presentation/routes/router.gr.dart';
import 'package:wedding_app/presentation/views/home/nav_cards/generic_card.dart';
import 'package:flutter/material.dart';
import 'package:wedding_app/core/extensions/x_context.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:auto_route/auto_route.dart';

class VenueCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GenericCard(
      _renderBody(context),
      'Venue',
      () {
        context.navigator.push(Routes.venueView);
      },
    );
  }

  Widget _renderBody(BuildContext context) {
    final maxWidth = context.maxWidth;

    return Center(
      child: Icon(
        FontAwesomeIcons.mapSigns,
        size: maxWidth * 0.12,
        color: Colors.white,
      ),
    );
  }
}

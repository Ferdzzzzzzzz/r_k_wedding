import 'package:wedding_app/presentation/core/side_effects/snack_bar_helpers.dart';
import 'package:wedding_app/presentation/views/home/nav_cards/generic_card.dart';
import 'package:flutter/material.dart';
import 'package:wedding_app/core/extensions/x_context.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class VenueCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GenericCard(
      _renderBody(context),
      'Venue',
      () {
        // context.navigator.push(Routes.venueView);
        snackBarError(context, message: "Network Connection Error");
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

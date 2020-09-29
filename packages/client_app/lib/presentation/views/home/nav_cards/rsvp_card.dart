import 'package:wedding_app/presentation/routes/router.gr.dart';
import 'package:wedding_app/presentation/views/home/nav_cards/generic_card.dart';
import 'package:flutter/material.dart';
import 'package:wedding_app/core/extensions/x_context.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:auto_route/auto_route.dart';

class RSVPCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final maxWidth = context.maxWidth;

    return Transform.translate(
      offset: Offset(
        -maxWidth * 0,
        0,
      ),
      child: GenericCard(
        _renderBody(context),
        'RSVP',
        () {
          context.navigator.push(Routes.rsvpView);
        },
      ),
    );
  }

  Widget _renderBody(BuildContext context) {
    final maxWidth = context.maxWidth;

    return Center(
      child: Icon(
        FontAwesomeIcons.solidEnvelope,
        size: maxWidth * 0.12,
        color: Colors.white,
      ),
    );
  }
}

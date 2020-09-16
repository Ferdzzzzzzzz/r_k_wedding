import 'package:client_app/presentation/views/home/nav_cards/generic_card.dart';
import 'package:flutter/material.dart';
import 'package:build_context/build_context.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RSVPCard extends StatelessWidget {
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
        'rsvp',
        () => print('rsvp'),
      ),
    );
  }

  Widget _renderBody(BuildContext context) {
    final maxWidth = context.mediaQuerySize.width;

    return Center(
      child: Icon(
        FontAwesomeIcons.solidEnvelope,
        size: maxWidth * 0.1,
      ),
    );
  }
}

import 'package:client_app/presentation/views/home/nav_cards/generic_card.dart';
import 'package:flutter/material.dart';
import 'package:build_context/build_context.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignOutCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GenericCard(
      _renderBody(context),
      'sign out',
    );
  }

  Widget _renderBody(BuildContext context) {
    final maxWidth = context.mediaQuerySize.width;

    return Center(
      child: Icon(
        FontAwesomeIcons.signOutAlt,
        size: maxWidth * 0.1,
      ),
    );
  }
}

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:wedding_app/gen/assets.gen.dart';
import 'package:wedding_app/gen/colors.gen.dart';
import 'package:wedding_app/presentation/core/side_effects/snack_bar_helpers.dart';
import 'package:wedding_app/presentation/views/home/nav_cards/bed_card.dart';
import 'package:wedding_app/presentation/views/home/nav_cards/restaurant_card.dart';
import 'package:wedding_app/presentation/views/home/nav_cards/rsvp_card.dart';
import 'package:wedding_app/presentation/views/home/nav_cards/schedule_card.dart';
import 'package:wedding_app/presentation/views/home/nav_cards/wine_card.dart';
import 'package:wedding_app/core/extensions/x_context.dart';
import 'package:flutter/material.dart';
import 'nav_cards/lions_card.dart';
import 'nav_cards/mountain_card.dart';
import 'nav_cards/venue_card.dart';

class HomeView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // body: _renderColors(context),
      body: Stack(
        children: [
          _renderBackground(context),
          _renderNavCards(context),
        ],
      ),
    );
  }

  Widget _renderNavCards(BuildContext context) {
    return GestureDetector(
      onTap: () => snackBarError(context, message: 'network error or whatever'),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _renderRow(VenueCard(), ScheduleCard()),
          _renderRow(RSVPCard(), BedCard()),
          _renderRow(LionsCard(), RestaurantCard()),
          _renderRow(WineCard(), MountainCard()),
        ],
      ),
    );
  }

  Widget _renderRow(Widget child1, Widget child2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        child1,
        child2,
      ],
    );
  }

  Widget _renderBackground(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.images.homeBg.path),
          fit: BoxFit.fill,
        ),
      ),
      child: Opacity(
        opacity: 0.5,
        child: Container(
          width: context.maxWidth,
          height: context.maxHeight,
          color: ColorName.lightGrey,
        ),
      ),
    );
  }
}

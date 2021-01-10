import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:wedding/gen/assets.gen.dart';
import 'package:wedding/gen/colors.gen.dart';
import 'package:wedding/gen/fonts.gen.dart';
import 'package:wedding/core/extensions/x_context.dart';
import 'package:auto_route/auto_route.dart';
import 'package:wedding/presentation/router/app_router.gr.dart';

class DefaultScaffold extends StatelessWidget {
  final String title;
  final Widget body;

  const DefaultScaffold({
    @required this.title,
    @required this.body,
  });

  @override
  Widget build(BuildContext context) {
    final paddingSide = context.maxWidth * 0.1;
    final paddingTop = context.maxHeight * 0.1;

    return Scaffold(
      backgroundColor: ColorName.lightGreen,
      appBar: _getAppBar(title),
      endDrawer: Drawer(
        child: Stack(
          children: [
            _renderBackground(context),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: paddingSide,
                vertical: paddingTop,
              ),
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  _renderListTile(context, "Home", () {
                    context.navigator.popUntilRoot();
                  }),
                  _renderListTile(context, "Venue", () {
                    context.navigator.replace(Routes.venueView);
                  }),
                  _renderListTile(context, "Order of the day", () {
                    context.navigator.replace(Routes.scheduleView);
                  }),
                  _renderListTile(context, "rsvp", () {
                    context.navigator.replace(Routes.rsvpView);
                  }),
                  _renderListTile(context, "accomodation", () {
                    context.navigator.replace(Routes.bedView);
                  }),
                  _renderListTile(context, "lions tour", () {
                    context.navigator.replace(Routes.lionsView);
                  }),
                  _renderListTile(context, "restaurants", () {
                    context.navigator.replace(Routes.restaurantView);
                  }),
                  _renderListTile(context, "wine farms", () {
                    context.navigator.replace(Routes.wineView);
                  }),
                  _renderListTile(context, "activities", () {
                    context.navigator.replace(Routes.activitiesView);
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
      body: body,
    );
  }

  Widget _renderListTile(
    BuildContext context,
    String title,
    VoidCallback ontap,
  ) {
    return GestureDetector(
      onTap: ontap,
      child: ListTile(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AutoSizeText(
              title,
              style: const TextStyle(
                fontFamily: FontFamily.castellar,
                color: ColorName.lightGreen,
                fontSize: 20,
              ),
              minFontSize: 1,
              maxFontSize: 20,
              maxLines: 1,
            ),
            const Divider(
              thickness: 1,
              height: 0,
              color: ColorName.lightGreen,
            ),
          ],
        ),
        onTap: ontap,
      ),
    );
  }

  Widget _renderBackground(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.images.homeBg.path),
          fit: BoxFit.cover,
        ),
      ),
      child: Opacity(
        opacity: 0.9,
        child: Container(
          width: context.maxWidth,
          height: context.maxHeight,
          color: ColorName.lightGrey,
        ),
      ),
    );
  }
}

AppBar _getAppBar(String title) {
  return AppBar(
    backgroundColor: ColorName.lightGreen,
    shadowColor: Colors.transparent,
    title: AutoSizeText(
      title,
      style: const TextStyle(
        fontFamily: FontFamily.castellar,
        color: Colors.white,
        fontSize: 50,
      ),
      minFontSize: 1,
      maxFontSize: 30,
      maxLines: 1,
    ),
  );
}

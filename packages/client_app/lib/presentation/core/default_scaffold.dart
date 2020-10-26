import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:wedding_app/gen/assets.gen.dart';
import 'package:wedding_app/gen/colors.gen.dart';
import 'package:wedding_app/gen/fonts.gen.dart';
import 'package:wedding_app/core/extensions/x_context.dart';

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
                  _renderListTile(context, "Home", () {}),
                  _renderListTile(context, "Venue", () {}),
                  _renderListTile(context, "Order of the day", () {}),
                  _renderListTile(context, "rsvp", () {}),
                  _renderListTile(context, "accomodation", () {}),
                  _renderListTile(context, "lions tour", () {}),
                  _renderListTile(context, "restaurants", () {}),
                  _renderListTile(context, "wine farms", () {}),
                  _renderListTile(context, "activities", () {}),
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
    return ListTile(
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

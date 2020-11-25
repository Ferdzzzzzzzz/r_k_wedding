import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/presentation/default_scaffold.dart';
import 'package:pinch_zoom_image_last/pinch_zoom_image_last.dart';
import 'package:mobile_app/gen/assets.gen.dart';
import 'package:mobile_app/gen/fonts.gen.dart';
import 'package:mobile_app/core/extensions/x_context.dart';

class VenueView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      title: "Venue",
      body: _renderBody(context),
    );
  }

  Widget _renderBody(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _renderSSpacer(context),
          _renderTitle(context, "Molenvliet Vineyards:"),
          _renderSlider(context),
          _renderSSpacer(context),
          _renderTitle(context, "Location:"),
          _renderSSpacer(context),
          _renderMap(context),
          _renderLSpacer(context),
          _renderTitle(context, "Directions:"),
          _renderSSpacer(context),
          _renderDirections(context),
          _renderLSpacer(context),
          _renderTitle(context, "Inside the Venue:"),
          _renderSSpacer(context),
          _renderVenue(context),
          _renderLSpacer(context),
        ],
      ),
    );
  }

  Widget _renderTitle(
    BuildContext context,
    String title,
  ) {
    return _renderPadding(
      context: context,
      body: AutoSizeText(
        title,
        style: const TextStyle(
          fontFamily: FontFamily.castellar,
          color: Colors.white,
          fontSize: 20,
        ),
        minFontSize: 1,
        maxFontSize: 20,
        maxLines: 1,
      ),
    );
  }

  Widget _renderSlider(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        enableInfiniteScroll: false,
        height: context.maxHeight * 0.25,
      ),
      items: [
        Assets.images.molenvliet.m1.image(),
        Assets.images.molenvliet.m2.image(),
        Assets.images.molenvliet.m3.image(),
        Assets.images.molenvliet.m4.image(),
      ].map((i) {
        return Builder(
          builder: (context) {
            return Container(
              margin: EdgeInsets.only(
                right: context.maxWidth * 0.05,
              ),
              child: Center(child: i),
            );
          },
        );
      }).toList(),
    );
  }

  Widget _renderPadding({
    @required BuildContext context,
    @required Widget body,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        left: context.maxWidth * 0.08,
        right: context.maxWidth * 0.08,
      ),
      child: body,
    );
  }

  Widget _renderDirections(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _renderSmallTitle(
          context,
          "From Southern Suburbs/Cape Town Airport:",
        ),
        _renderTime(context, "(45-50 mins)"),
        SizedBox(height: context.maxHeight * 0.025),
        _renderFirstList(context),
        SizedBox(height: context.maxHeight * 0.025),
        _renderSmallTitle(
          context,
          "From Cape Town City Centre, V&A Waterfront:",
        ),
        _renderTime(context, "(50 mins)"),
        SizedBox(height: context.maxHeight * 0.025),
        _renderSecondList(context),
      ],
    );
  }

  Widget _renderTime(BuildContext context, String time) {
    return _renderPadding(
      context: context,
      body: Text(
        time,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 10,
        ),
      ),
    );
  }

  Widget _renderSmallTitle(BuildContext context, String title) {
    return _renderPadding(
      context: context,
      body: AutoSizeText(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        maxFontSize: 20,
        maxLines: 1,
      ),
    );
  }

  Widget _renderFirstList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.maxWidth * 0.08),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _renderListItem(context, _textList1[0]),
          _renderListItem(context, _textList1[1]),
          _renderListItem(context, _textList1[2]),
          _renderListItem(context, _textList1[3]),
          _renderListItem(context, _textList1[4]),
          _renderListItem(context, _textList1[5]),
          _renderListItem(context, _textList1[6]),
        ],
      ),
    );
  }

  Widget _renderSecondList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.maxWidth * 0.08),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _renderListItem(context, _textList2[0]),
          _renderListItem(context, _textList2[1]),
          _renderListItem(context, _textList2[2]),
          _renderListItem(context, _textList2[3]),
          _renderListItem(context, _textList2[4]),
          _renderListItem(context, _textList2[5]),
          _renderListItem(context, _textList2[6]),
          _renderListItem(context, _textList2[7]),
          _renderListItem(context, _textList2[8]),
          _renderListItem(context, _textList2[9]),
        ],
      ),
    );
  }

  Widget _renderListItem(BuildContext context, String title) {
    return Padding(
      padding: EdgeInsets.only(bottom: context.maxHeight * 0.01),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: context.maxWidth * 0.025,
            child: const Text(
              "•",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Expanded(
            child: AutoSizeText(
              title,
              maxLines: 3,
              minFontSize: 10,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _renderMap(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: context.maxWidth * 0.08,
      ),
      child: PinchZoomImage(
        image: Assets.images.map.image(),
        zoomedBackgroundColor: const Color.fromRGBO(240, 240, 240, 1.0),
        hideStatusBarWhileZooming: true,
      ),
    );
  }

  Widget _renderVenue(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: context.maxWidth * 0.08,
      ),
      child: PinchZoomImage(
        image: Assets.images.venue.image(),
        zoomedBackgroundColor: const Color.fromRGBO(240, 240, 240, 1.0),
        hideStatusBarWhileZooming: true,
      ),
    );
  }

  Widget _renderLSpacer(BuildContext context) {
    return SizedBox(height: context.maxHeight * 0.05);
  }

  Widget _renderSSpacer(BuildContext context) {
    return SizedBox(height: context.maxHeight * 0.02);
  }
}

final _textList1 = [
  "From the N2 take the Stellenbosch (R310)/Baden Powell offramp.",
  "Follow the road past Spier Wine Estate until you reach a T-junction. Turn right towards Stellenbosch and follow the road past Distell Estate.",
  "Continue past Stellenbsoch station, staying in the left lane.",
  "Keep left and at the second traffic light (Merriman St), turn right. Continue up Merriman St until the traffic circle.",
  "Turn left at the circle into Cluver Rd. - Continue to the next set of traffic lights and turn right into the Helshoogte Pass.",
  "Continue for approximately 7kms past Delaire Graff Estate (right) and Tokara (left).",
  "MolenVliet is on the right hand side as the road starts to descend.",
];

final _textList2 = [
  "From the N1 take the Stellenbosch off ramp (R304) just after the N1 garage.",
  "Follow the road for approximately 15kms into Stellenbosch.",
  "Turn left onto the R44 (at the Adam St/Bird St traffic lights).",
  "Turn right at the next set of traffic lights onto Helshoogte Road (R310).",
  "You will see a “Tennantville” sign on a wall on the left hand side of the road.",
  "Follow the road and continue accross the next set of traffic lights (Helshoogte Rd/Cluver St).",
  "You are now on the Helshoogte pass; continue for approximately 7kms, past Delaire Graff Estate (right) and Tokara (left).",
  "MolenVliet Wine & Guest Estate is on the right hand side as the road starts to descend. From Stellenbosch: (10-15 mins)",
  "Leave Stellenbosch on Helshoogte Road/R310 - Drive past Tokara Wine Estate on the right, and Zorgvliet Wine Estate on the right.",
  "MolenVliet Wine & Guest Estate is on the right hand side as the road starts to descend.",
];

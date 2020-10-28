import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wedding_app/gen/fonts.gen.dart';
import 'package:wedding_app/presentation/core/default_scaffold.dart';
import 'package:wedding_app/core/extensions/x_context.dart';

class LionsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      title: "lions tour",
      body: _renderBody(context),
    );
  }

  Widget _renderBody(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _renderSSpacer(context),
          _renderFirstText(context),
          _renderSSpacer(context),
          _renderTappableText(context),
          _renderLSpacer(context),
          SizedBox(
            width: context.maxWidth,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _renderTitle(context, "Match Dates & Locations:"),
                _renderTitle(context, "Places to watch on tv:"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _renderFirstText(BuildContext context) {
    return _renderPadding(
      context: context,
      body: const AutoSizeText(
        text1,
        maxLines: 3,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _renderTappableText(BuildContext context) {
    return GestureDetector(
      onTap: () {
        launch("https://www.lionstour.com/");
      },
      child: _renderPadding(
        context: context,
        body: const AutoSizeText.rich(
          TextSpan(
            text: "Detailed Information can be found ",
            children: [
              TextSpan(
                text: "here",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                ),
              ),
              TextSpan(text: "."),
            ],
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          maxLines: 1,
        ),
      ),
    );
  }

  Widget _renderLSpacer(BuildContext context) {
    return SizedBox(height: context.maxHeight * 0.05);
  }

  Widget _renderSSpacer(BuildContext context) {
    return SizedBox(height: context.maxHeight * 0.02);
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
}

const text1 =
    "As some of you may know, The British and Irish Lions Tour in South Africa coincides with the date of our wedding - almost like someone thought about it ; )";
const text2 = "here.";

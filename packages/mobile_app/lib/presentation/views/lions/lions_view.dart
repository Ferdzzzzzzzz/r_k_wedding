import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wedding/gen/fonts.gen.dart';
import 'package:wedding/presentation/default_scaffold.dart';
import 'package:wedding/core/extensions/x_context.dart';
import 'package:wedding/presentation/views/lions/schedule_table.dart';

class LionsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      title: "lions tour",
      body: _renderPadding(
        context: context,
        body: _renderBody(context),
      ),
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
                _renderSSpacer(context),
                LionsSchedule(),
                _renderSSpacer(context),
                _renderTitle(context, "Places to watch on tv:"),
                _renderSSpacer(context),
                const _TitleAndList("Stellenbosch", [
                  "Thirsty Scarecrow - Jolly bar favoured by the young'uns!",
                  "De Akker - Oldest pub in Stellenbosch, drawing a crowd to match!",
                ]),
                _renderSSpacer(context),
                const _TitleAndList("Cape Town", [
                  "Ferryman's",
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _renderFirstText(BuildContext context) {
    return const AutoSizeText(
      text1,
      maxLines: 3,
      style: TextStyle(
        color: Colors.white,
      ),
    );
  }

  Widget _renderTappableText(BuildContext context) {
    return AutoSizeText.rich(
      TextSpan(
        text: "Detailed Information can be found at ",
        children: [
          TextSpan(
            text: "lionstour.com",
            style: const TextStyle(
              fontWeight: FontWeight.w800,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () async {
                launch("https://www.lionstour.com/");
              },
          ),
          const TextSpan(text: "."),
        ],
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      maxLines: 1,
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

  Widget _renderTitle(
    BuildContext context,
    String title,
  ) {
    return AutoSizeText(
      title,
      style: const TextStyle(
        fontFamily: FontFamily.castellar,
        color: Colors.white,
        fontSize: 20,
      ),
      minFontSize: 1,
      maxFontSize: 20,
      maxLines: 1,
    );
  }
}

const text1 =
    "As some of you may know, The British and Irish Lions Tour in South Africa coincides with the date of our wedding - almost like someone thought about it ; )";
const text2 = "here.";

class _TitleAndList extends StatelessWidget {
  final String title;
  final List<String> list;

  const _TitleAndList(this.title, this.list);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$title - ',
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        ...list.map((item) => Column(
              children: [
                _renderSSpacer(context),
                Text(
                  item,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ))
      ],
    );
  }
}

Widget _renderLSpacer(BuildContext context) {
  return SizedBox(height: context.maxHeight * 0.05);
}

Widget _renderSSpacer(BuildContext context) {
  return SizedBox(height: context.maxHeight * 0.02);
}

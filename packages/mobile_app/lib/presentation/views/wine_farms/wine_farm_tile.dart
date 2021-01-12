import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wedding/presentation/views/wine_farms/wine_farm_title.dart';
import 'package:wedding/core/extensions/x_context.dart';

class WineFarmTile extends StatelessWidget {
  final Image image;
  final String title;
  final String website;
  final String openHours;
  final String whyWeLoveIt;
  final String contactInfo;

  const WineFarmTile({
    this.title,
    this.image,
    this.website,
    this.openHours,
    this.whyWeLoveIt,
    this.contactInfo,
  });

  @override
  Widget build(BuildContext context) {
    return _renderPadding(
      context,
      body: Padding(
        padding: EdgeInsets.only(top: context.maxHeight * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WineFarmTitle(title),
            image,
            TitleWithTapText(title: "WEBSITE", text: website),
            TitleAndText(title: "CONTACT", text: contactInfo),
            TitleAndText(title: "OPENING HOURS", text: openHours),
            TitleAndText(title: "WHY WE LOVE IT?", text: whyWeLoveIt),
          ],
        ),
      ),
    );
  }

  Widget _renderPadding(
    BuildContext context, {
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
}

class TitleWithTapText extends StatelessWidget {
  const TitleWithTapText({
    @required this.title,
    @required this.text,
  });

  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: context.maxHeight * 0.015),
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
            text: "$title:",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          TextSpan(
            text: '  $text',
            style: const TextStyle(
              fontSize: 18,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () async {
                final website = 'http://www.$text';
                await launch(website);
              },
          ),
        ]),
      ),
    );
  }
}

class TitleAndText extends StatelessWidget {
  const TitleAndText({
    @required this.title,
    @required this.text,
  });

  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: context.maxHeight * 0.015),
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
            text: "$title:",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          TextSpan(
            text: '  $text',
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        ]),
      ),
    );
  }
}

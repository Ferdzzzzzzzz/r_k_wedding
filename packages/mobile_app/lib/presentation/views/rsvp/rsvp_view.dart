import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wedding/gen/fonts.gen.dart';
import 'package:wedding/presentation/default_scaffold.dart';
import 'package:wedding/core/extensions/x_context.dart';
import 'package:wedding/presentation/views/rsvp/rsvp_form.dart';

class RsvpView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      title: "RSVP",
      body: _renderPadding(
        context: context,
        body: _renderBody(context),
      ),
    );
  }

  Widget _renderBody(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          _renderTitle(context, "Katie & Ruben's Wedding"),
          _renderSSSpacer(context),
          _renderSubTitle(context, "-24th JULY 2021-"),
          _renderSSpacer(context),
          RsvpForm(),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                _renderSubTitle(context, "-PLEASE RSVP BY 2nd JUNE 2021-")
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _renderSSpacer(BuildContext context) {
    return SizedBox(
      height: context.maxHeight * 0.05,
    );
  }

  Widget _renderSSSpacer(BuildContext context) {
    return SizedBox(
      height: context.maxHeight * 0.01,
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
        fontSize: 25,
      ),
      textAlign: TextAlign.left,
      minFontSize: 1,
      maxFontSize: 25,
      maxLines: 1,
    );
  }

  Widget _renderSubTitle(
    BuildContext context,
    String title,
  ) {
    return AutoSizeText(
      title,
      style: GoogleFonts.roboto(
        color: Colors.white,
        fontSize: 20,
      ),
      textAlign: TextAlign.left,
      minFontSize: 1,
      maxFontSize: 25,
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
        top: context.maxWidth * 0.1,
        bottom: context.maxWidth * 0.1,
      ),
      child: body,
    );
  }
}

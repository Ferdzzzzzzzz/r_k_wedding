import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/presentation/default_scaffold.dart';
import 'package:mobile_app/gen/fonts.gen.dart';
import 'package:mobile_app/core/extensions/x_context.dart';

class WineView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      title: "wine farms",
      body: _renderBody(context),
    );
  }

  Widget _renderBody(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _renderTitle(context, "Molenvliet"),
        _renderTitle(context, "Peter Falke"),
        _renderTitle(context, "Hidden valley"),
        _renderTitle(context, "Longridge"),
        _renderTitle(context, "Tokara"),
        _renderTitle(context, "Bartinney"),
        _renderTitle(context, "Lanzerac"),
      ],
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
}

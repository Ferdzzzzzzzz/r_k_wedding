import 'package:flutter/material.dart';
import 'package:wedding/gen/fonts.gen.dart';
import 'package:wedding/core/extensions/x_context.dart';
import 'package:auto_size_text/auto_size_text.dart';

class WineFarmTitle extends StatelessWidget {
  final String title;

  const WineFarmTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return _renderTitle(context, title);
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

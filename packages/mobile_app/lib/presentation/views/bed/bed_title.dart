import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:wedding/core/extensions/x_context.dart';
import 'package:wedding/gen/fonts.gen.dart';

class BedTitle extends StatelessWidget {
  final String title;

  const BedTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: context.maxHeight * 0.01),
      child: _renderTitle(context, title),
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
}

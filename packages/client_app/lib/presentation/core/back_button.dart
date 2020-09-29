import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wedding_app/core/extensions/x_context.dart';
import 'package:wedding_app/gen/colors.gen.dart';
import 'package:auto_route/auto_route.dart';

class CustomBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final maxH = context.maxHeight;
    final maxW = context.maxWidth;
    return Align(
      alignment: Alignment.topLeft,
      child: InkWell(
        onTap: () => context.navigator.pop(),
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: maxW * 0.06,
            vertical: maxH * 0.05,
          ),
          child: Icon(
            FontAwesomeIcons.ellipsisV,
            color: ColorName.navyBlue,
            size: maxH * 0.03,
          ),
        ),
      ),
    );
  }
}

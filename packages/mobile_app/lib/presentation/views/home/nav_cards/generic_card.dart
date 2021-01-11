import 'package:auto_size_text/auto_size_text.dart';
import 'package:wedding/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:wedding/core/constants.dart';
import 'package:wedding/core/extensions/x_context.dart';
import 'package:wedding/gen/fonts.gen.dart';

class GenericCard extends StatelessWidget {
  final Widget child;
  final String title;
  final VoidCallback onTap;

  const GenericCard(this.child, this.title, this.onTap);

  @override
  Widget build(BuildContext context) {
    final maxH = context.maxHeight;
    return Container(
      height: maxH * 0.18,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: ColorName.lightGreen,
        boxShadow: materialBoxShadow,
      ),
      child: AspectRatio(
        aspectRatio: 2.8 / 3,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            customBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            onTap: onTap,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                child,
                SizedBox(height: maxH * 0.005),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: maxH * 0.02),
                  child: AutoSizeText(
                    title,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: FontFamily.castellar,
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

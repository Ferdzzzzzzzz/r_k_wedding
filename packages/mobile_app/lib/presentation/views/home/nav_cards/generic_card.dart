import 'package:auto_size_text/auto_size_text.dart';
import 'package:mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/core/constants.dart';
import 'package:mobile_app/core/extensions/x_context.dart';
import 'package:mobile_app/gen/fonts.gen.dart';

class GenericCard extends StatelessWidget {
  final Widget child;
  final String title;
  final VoidCallback onTap;

  const GenericCard(this.child, this.title, this.onTap);

  @override
  Widget build(BuildContext context) {
    final maxW = context.maxWidth;
    final maxH = context.maxHeight;
    return Container(
      width: maxW * 0.4,
      height: maxH * 0.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: ColorName.lightGreen,
        boxShadow: materialBoxShadow,
      ),
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
                  maxLines: 1,
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
    );
  }
}

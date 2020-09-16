import 'package:auto_size_text/auto_size_text.dart';
import 'package:client_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:client_app/core/constants.dart';
import 'package:build_context/build_context.dart';
import 'package:google_fonts/google_fonts.dart';

class GenericCard extends StatelessWidget {
  final Widget child;
  final String title;
  final VoidCallback onTap;

  const GenericCard(this.child, this.title, this.onTap);

  @override
  Widget build(BuildContext context) {
    final maxW = context.mediaQuerySize.width;
    final maxH = context.mediaQuerySize.height;
    return Padding(
      padding: EdgeInsets.all(maxH * 0.025),
      child: Container(
        width: maxW * 0.1,
        height: maxW * 0.1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: ColorName.lightGrey,
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
                Expanded(
                  child: child,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: maxH * 0.02),
                  child: AutoSizeText(
                    title,
                    maxLines: 1,
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      color: ColorName.darkGreen,
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

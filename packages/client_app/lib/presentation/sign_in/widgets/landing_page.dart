import 'package:client_app/presentation/widgets/buttons/rounded_btn.dart';
import 'package:flutter/material.dart';
import "package:build_context/build_context.dart";
import 'package:hexcolor/hexcolor.dart';

class LandingPage extends StatelessWidget {
  final Function onTap;

  const LandingPage(this.onTap);

  @override
  Widget build(BuildContext context) {
    final maxHeight = context.mediaQuerySize.height;
    final btnBottomSpace = maxHeight * 0.2;
    final topContainerHeight = maxHeight * 0.33;

    return Stack(
      children: <Widget>[
        Container(
          width: context.mediaQuerySize.width,
          height: topContainerHeight,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Hexcolor('FFFFFF'),
                Hexcolor('FFF1F2'),
              ], // whitish to gray
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: btnBottomSpace),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: RoundedBtn(onTap),
          ),
        ),
      ],
    );
  }
}

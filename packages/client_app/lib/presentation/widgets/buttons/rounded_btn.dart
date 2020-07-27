import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import "package:build_context/build_context.dart";
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:hexcolor/hexcolor.dart';

class RoundedBtn extends HookWidget {
  final Function onTap;

  const RoundedBtn(this.onTap);

  @override
  Widget build(BuildContext context) {
    final width = context.mediaQuerySize.width * 0.33;
    final height = context.mediaQuerySize.height * 0.1;

    return Material(
      clipBehavior: Clip.antiAlias,
      borderRadius: BorderRadius.circular(50),
      color: Colors.transparent,
      child: Ink(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: InkWell(
          onTap: () => _handleOnTap(),
          splashColor: Colors.grey[200],
          child: _renderButton(width, height),
        ),
      ),
    );
  }

  Future<void> _handleOnTap() async {
    await Future<void>.delayed(
      const Duration(milliseconds: 200),
    );
    onTap();
  }

  Widget _renderButton(double width, double height) {
    return Center(
      child: Icon(
        Ionicons.md_arrow_forward,
        color: Hexcolor('522142'),
      ),
    );
  }
}
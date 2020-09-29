import 'package:wedding_app/gen/colors.gen.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';

Future<dynamic> snackBarError(
  BuildContext context, {
  @required String message,
  String title,
  Duration duration = const Duration(seconds: 3),
}) {
  return Flushbar<dynamic>(
    margin: const EdgeInsets.all(8),
    borderRadius: 8,
    title: title,
    backgroundColor: ColorName.darkGrey,
    message: message,
    icon: const Icon(
      Icons.warning,
      size: 28.0,
      color: ColorName.warningRed,
    ),
    //leftBarIndicatorColor: Colors.red[300],
    duration: duration,
  ).show(context);
}

import 'package:client_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

InputDecoration signInInputDecoration({String hintText}) {
  return InputDecoration(
    contentPadding: const EdgeInsets.symmetric(vertical: 18.0),
    hintStyle: GoogleFonts.openSans(color: ColorName.darkGreen, fontSize: 18),
    hintText: hintText,
    focusedBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: ColorName.darkGreen, width: 2),
    ),
    enabledBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: ColorName.darkGreen),
    ),
    errorBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.red),
    ),
    focusedErrorBorder: const UnderlineInputBorder(
      borderSide: BorderSide(width: 2.0, color: Colors.red),
    ),
    errorStyle: const TextStyle(color: Colors.red),
  );
}

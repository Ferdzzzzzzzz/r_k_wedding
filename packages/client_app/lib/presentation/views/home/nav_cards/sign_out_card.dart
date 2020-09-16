import 'package:client_app/application/auth/auth_state/auth_cubit.dart';
import 'package:client_app/gen/colors.gen.dart';
import 'package:client_app/presentation/views/home/nav_cards/generic_card.dart';
import 'package:flutter/material.dart';
import 'package:build_context/build_context.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignOutCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GenericCard(
      _renderBody(context),
      'sign out',
      () => _onTap(context),
    );
  }

  Widget _renderBody(BuildContext context) {
    final maxWidth = context.mediaQuerySize.width;

    return Center(
      child: Icon(
        FontAwesomeIcons.signOutAlt,
        size: maxWidth * 0.1,
      ),
    );
  }

  void _onTap(BuildContext context) {
    final authCubit = context.bloc<AuthCubit>();
    final maxH = context.mediaQuerySize.height;
    showModalBottomSheet<void>(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            color: ColorName.blueGreen,
          ),
          height: maxH * 0.15,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RawMaterialButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    'cancel',
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: ColorName.lightPink,
                    ),
                  ),
                ),
                RawMaterialButton(
                  onPressed: () => authCubit.signOut(),
                  child: Text(
                    'sign out',
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: ColorName.lightPink,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

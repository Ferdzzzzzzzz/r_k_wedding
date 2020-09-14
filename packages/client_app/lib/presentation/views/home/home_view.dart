import 'package:client_app/application/auth/auth_state/auth_cubit.dart';
import 'package:client_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:build_context/build_context.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              _renderColor(context, ColorName.eDarkerBrown),
              _renderColor(context, ColorName.eLightBrown),
              _renderColor(context, ColorName.eLighterGreen),
              _renderColor(context, ColorName.eLightGreen),
              _renderColor(context, ColorName.eMediumGreen),
              _renderColor(context, ColorName.eDarkGreen),
            ],
          ),
          Center(
            child: Container(
              height: 100,
              width: 200,
              child: MaterialButton(
                color: ColorName.eLightBrown,
                onPressed: () {
                  final authCubit = context.bloc<AuthCubit>();
                  authCubit.signOut();
                },
                child: Center(
                  child: Text(
                    "LogOut",
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          if (false)
            Center(
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  _renderNavCard(
                    context,
                    'RSVP',
                    () {},
                  ),
                  _renderNavCard(
                    context,
                    'Restaurants',
                    () {},
                  ),
                  _renderNavCard(
                    context,
                    "BnB's",
                    () {},
                  ),
                  _renderNavCard(
                    context,
                    'Winefarms',
                    () {},
                  ),
                  _renderNavCard(
                    context,
                    'Schedule',
                    () {},
                  ),
                  _renderNavCard(
                    context,
                    'Notifications',
                    () {},
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget _renderNavCard(
    BuildContext context,
    String title,
    Function onTap,
  ) {
    final maxWidth = context.mediaQuerySize.width;
    final boxSize = maxWidth * 0.4;

    return Center(
      child: GestureDetector(
        onTap: () => onTap(),
        child: Container(
          width: boxSize,
          height: boxSize,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Hexcolor('FBFAF7'),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  title,
                  style: GoogleFonts.openSans(
                    color: Hexcolor('484554'),
                    fontWeight: FontWeight.w800,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _renderColor(BuildContext context, Color color) {
    final maxH = context.mediaQuerySize.height;
    return Container(
      height: maxH / 6,
      color: color,
    );
  }
}

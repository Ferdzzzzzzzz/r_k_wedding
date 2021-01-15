import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wedding/application/rsvp_form/rsvp_form_cubit.dart';
import 'package:wedding/application/rsvp_form/rsvp_form_state.dart';
import 'package:wedding/core/extensions/x_context.dart';
import 'package:wedding/gen/colors.gen.dart';

class RsvpForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.maxHeight * 0.5,
      width: double.infinity,
      child: _RenderForm(),
    );
  }
}

class _RenderForm extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final _namesTextController = useTextEditingController(text: "");
    final _extraTextController = useTextEditingController(text: "");

    return BlocConsumer<RsvpformCubit, RsvpFormState>(
      listener: (context, state) {
        state.optionEitherFailureOrUnit.fold(
          () => null,
          (eitherFailureOrUnit) {
            eitherFailureOrUnit.fold(
              (f) {
                Flushbar<void>(
                  titleText: const Text(
                    "I do...not know what went wrong",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: ColorName.warningRed,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  messageText: const Text(
                    "Oops, something went wrong, please check your connection and try again. We really want you at the wedding!",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: ColorName.warningRed,
                    ),
                  ),
                  icon: const Icon(
                    Icons.warning,
                    size: 28.0,
                    color: ColorName.warningRed,
                  ),
                  backgroundColor: Colors.white,
                  leftBarIndicatorColor: ColorName.warningRed,
                  duration: const Duration(seconds: 10),
                ).show(context);
              },
              (_) {
                Flushbar<void>(
                  titleText: const Text(
                    "Here comes the bride...",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: ColorName.mediumGreen,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  messageText: const Text(
                    "Can't wait to see you there!",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: ColorName.mediumGreen,
                    ),
                  ),
                  backgroundColor: Colors.white,
                  icon: const Icon(
                    Icons.check_circle,
                    color: ColorName.mediumGreen,
                  ),
                  leftBarIndicatorColor: ColorName.mediumGreen,
                  duration: const Duration(seconds: 10),
                ).show(context);
                context.read<RsvpformCubit>().finishSubmit();
                _namesTextController.clear();
                _extraTextController.clear();
              },
            );
          },
        );
      },
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const _RenderTitle("Name/s"),
            TextField(
              controller: _namesTextController,
              onChanged: (names) =>
                  context.read<RsvpformCubit>().changeNames(names),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                //fillColor: Colors.green
              ),
            ),
            CheckboxListTile(
              title: const Text(
                "Accepts with pleasure",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              value: state.optionAccepts.fold(
                () => false,
                (accepts) => accepts,
              ),
              onChanged: (value) =>
                  context.read<RsvpformCubit>().changeRsvp(accepts: value),
              controlAffinity: ListTileControlAffinity.leading,
              activeColor: ColorName.navyBlue,
              checkColor: Colors.white,
            ),
            CheckboxListTile(
              title: const Text(
                "Declines with regret",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              value: state.optionAccepts.fold(
                () => false,
                (accepts) => !accepts,
              ),
              onChanged: (value) =>
                  context.read<RsvpformCubit>().changeRsvp(accepts: !value),
              controlAffinity: ListTileControlAffinity.leading,
              activeColor: ColorName.navyBlue,
              checkColor: Colors.white,
            ),
            SizedBox(
              height: context.maxHeight * 0.05,
            ),
            const _RenderTitle("Please advise of any dietary requirements"),
            TextField(
              onChanged: (info) =>
                  context.read<RsvpformCubit>().changeDietryRequirements(info),
              controller: _extraTextController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                //fillColor: Colors.green
              ),
            ),
            SizedBox(
              height: context.maxHeight * 0.05,
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () {
                      if (state.canSubmit && !state.isSubmitting) {
                        context.read<RsvpformCubit>().submitForm();
                      }
                    },
                    child: Container(
                      width: context.maxWidth * 0.6,
                      height: context.maxHeight * 0.05,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: state.canSubmit
                            ? ColorName.lightBrown
                            : ColorName.darkGrey,
                      ),
                      child: Center(
                        child: state.isSubmitting
                            ? const CircularProgressIndicator()
                            : Text(
                                "Submit",
                                style: GoogleFonts.roboto(
                                  color: ColorName.darkGreen,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

class _RenderTitle extends StatelessWidget {
  final String title;

  const _RenderTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.roboto(
        color: Colors.white,
        fontSize: 18,
      ),
    );
  }
}

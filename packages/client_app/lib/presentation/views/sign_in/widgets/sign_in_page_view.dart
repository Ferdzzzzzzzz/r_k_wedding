import 'package:client_app/presentation/views/sign_in/widgets/landing_page.dart';
import 'package:client_app/presentation/views/sign_in/widgets/sign_in_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SignInPageView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final _pageController = useState(PageController());

    return Stack(
      children: <Widget>[
        PageView(
          controller: _pageController.value,
          physics: const NeverScrollableScrollPhysics(),
          children: <Widget>[
            LandingPage(() {
              _pageController.value.nextPage(
                duration: const Duration(milliseconds: 800),
                curve: Curves.decelerate,
              );
            }),
            SignInForm(),
          ],
        )
      ],
    );
  }
}

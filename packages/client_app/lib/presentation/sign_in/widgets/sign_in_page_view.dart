import 'package:client_app/presentation/sign_in/widgets/landing_page.dart';
import 'package:client_app/presentation/sign_in/widgets/sign_in_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SignInPageView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final _pageController = useState(PageController(initialPage: 0));
    // const _placeholder =
    //     'https://images.unsplash.com/photo-1532712938310-34cb3982ef74?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3450&q=80';
    return Stack(
      children: <Widget>[
        // Image.network(_placeholder),
        PageView(
          controller: _pageController.value,
          scrollDirection: Axis.horizontal,
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

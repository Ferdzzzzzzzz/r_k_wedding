import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:wedding/presentation/router/app_router.gr.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ruben & Katie',
      builder: (context, widget) => ResponsiveWrapper.builder(
        ExtendedNavigator(router: AppRouter()),
        maxWidth: 1200,
        minWidth: 480,
        defaultScale: true,
        background: Container(color: const Color(0xFFF5F5F5)),
      ),
    );
  }
}

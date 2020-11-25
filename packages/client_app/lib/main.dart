import 'package:wedding_app/presentation/core/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(const MaterialApp(
    home: Text("Yeh"),
  ));

  // runApp(AppWidget());
}

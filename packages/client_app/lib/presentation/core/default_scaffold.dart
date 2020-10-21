import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:wedding_app/gen/colors.gen.dart';
import 'package:wedding_app/gen/fonts.gen.dart';

class DefaultScaffold extends StatelessWidget {
  final String title;
  final Widget body;

  const DefaultScaffold({
    @required this.title,
    @required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.lightGreen,
      appBar: _getAppBar(title),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

AppBar _getAppBar(String title) {
  return AppBar(
    backgroundColor: ColorName.lightGreen,
    shadowColor: Colors.transparent,
    title: AutoSizeText(
      title,
      style: const TextStyle(
        fontFamily: FontFamily.castellar,
        color: Colors.white,
        fontSize: 50,
      ),
      maxFontSize: 30,
      maxLines: 1,
    ),
  );
}

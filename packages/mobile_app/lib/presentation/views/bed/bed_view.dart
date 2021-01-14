import 'package:flutter/material.dart';
import 'package:wedding/core/extensions/x_context.dart';
import 'package:wedding/presentation/default_scaffold.dart';
import 'package:wedding/presentation/views/bed/bed_title.dart';

class BedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      title: "wine farms",
      body: _renderBody(context),
    );
  }

  Widget _renderBody(BuildContext context) {
    return SingleChildScrollView(
      child: _renderPadding(
        context,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BedTitle("Need"),
            const BedTitle("Some"),
            const BedTitle("Places"),
            const BedTitle("To"),
            const BedTitle("Stay"),
            SizedBox(
              height: context.maxHeight * 0.1,
            ),
          ],
        ),
      ),
    );
  }

  Widget _renderPadding(
    BuildContext context, {
    @required Widget body,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        left: context.maxWidth * 0.08,
        right: context.maxWidth * 0.08,
      ),
      child: body,
    );
  }
}

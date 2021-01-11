import 'package:flutter/material.dart';
import 'package:wedding/gen/assets.gen.dart';
import 'package:wedding/presentation/default_scaffold.dart';
import 'package:wedding/presentation/views/wine_farms/wine_farm_tile.dart';

class WineView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      title: "wine farms",
      body: _renderBody(context),
    );
  }

  Widget _renderBody(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WineFarmTile(
          title: "Molenvliet",
          contactInfo: "Tel: +27 79 836 6127",
          image: Assets.images.bed.image(),
          openHours:
              "Private wine tasting will be available on site in the two days prior to the wedding.",
          website: "molenvliet.co.za",
          whyWeLoveIt:
              "The wine tasting room is only open for hotel guests so you get an intimate and personalised experience and no driving home required if you are staying!",
        ),

        // WineFarmTile(
        //   title: "Peter Falke",
        // ),
        // WineFarmTitle("Hidden valley"),
        // WineFarmTitle("Longridge"),
        // WineFarmTitle("Tokara"),
        // WineFarmTitle("Bartinney"),
        // WineFarmTitle("Lanzerac"),
      ],
    );
  }
}

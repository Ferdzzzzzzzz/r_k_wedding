import 'package:flutter/material.dart';
import 'package:wedding/gen/assets.gen.dart';
import 'package:wedding/presentation/default_scaffold.dart';
import 'package:wedding/presentation/views/wine_farms/wine_farm_tile.dart';
import 'package:wedding/core/extensions/x_context.dart';

class WineView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      title: "wine farms",
      body: _renderBody(context),
    );
  }

  Widget _renderBody(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WineFarmTile(
            title: "Molenvliet",
            contactInfo: "Tel: +27 79 836 6127",
            image: Assets.images.winefarms.molenvliet.image(),
            openHours:
                "Private wine tasting will be available on site in the two days prior to the wedding.",
            website: "molenvliet.co.za",
            whyWeLoveIt:
                "The wine tasting room is only open for hotel guests so you get an intimate and personalised experience and no driving home required if you are staying!",
          ),
          WineFarmTile(
            title: "Peter Falke",
            image: Assets.images.winefarms.peterFalke.image(),
            website: "peterfalkewines.com",
            contactInfo: "+27 (0)21 881 3667 / tasting@peterfalkewines.co.za",
            openHours:
                "Mon – Thurs: 11:00 – 17:00 for wine tasting & sales. Fri – Sun: 11:00 – 19:00 for wine tasting only.",
            whyWeLoveIt:
                "Peter Falke is a firm favourite of ours for its huge lawn and relaxed atmosphere. Its especially beautiful towards the end of the day for a sundowner and the nachos are also highly recommended!",
          ),
          WineFarmTile(
            title: "Hidden valley",
            website: "hiddenvalleywines.co.za",
            image: Assets.images.winefarms.hiddenvalley.image(),
            contactInfo:
                "+27 (0) 21 880 2646 or +27 (0) 21 006 1022 / info@hiddenvalleywines.co.za",
            openHours:
                "7 days a week, 9am to 6pm in Summer & 9am to 5pm in Winter.",
            whyWeLoveIt:
                "Hidden Valley Wines has incredible views from its hilltop location, and their cheese and olive board paired with their wine tasting is a real treat. You can also order a picnic to have in a secluded spot by the dam to easily while away an afternoon.",
          ),
          WineFarmTile(
            title: "Longridge",
            website: "longridge.co.za",
            image: Assets.images.winefarms.longridge.image(),
            contactInfo: "+21 855 2005 / info@Longridge.co.za",
            openHours: "Daily 10am to 3.30pm",
            whyWeLoveIt:
                "Longridge is always a great choice because of its excellent wines, superior food and serene atmosphere. The staff are super knowledgeable and friendly, and their famous Emily is such a beautiful easy drinker.",
          ),
          WineFarmTile(
            title: "Tokara",
            website: "tokara.com",
            image: Assets.images.winefarms.tokara.image(),
            contactInfo: "+27 21 808 5912 / winelounge@tokara.com",
            openHours:
                "Monday to Friday - 9:00 to 17:30 Saturday & Sunday - 10:00 to 17:30 ",
            whyWeLoveIt:
                "Tokara is close to the venue and has beautiful glass architecture as well as a great roaring fire if the weather is chilly. If its warm you can sit outside and gaze over the vineyards from its mountain top position.",
          ),
          WineFarmTile(
            title: "Bartinney",
            website: "bartinney.co.za",
            image: Assets.images.winefarms.bartinney.image(),
            contactInfo: "+27 21 885 1013 / tastingshed@bartinney.co.za",
            openHours:
                "Monday – Thursday: 10:00 – 17:00 Friday: 10:00 – 20:00 Saturday: 10:00 – 17:00",
            whyWeLoveIt:
                "Bartinney is off the beaten track, and faces a different way so makes a lovely change of view. The water is beautiful, and their cheese platters are very generous. There are also gorgeous house dogs to boot!",
          ),
          WineFarmTile(
            title: "Lanzerac",
            image: Assets.images.winefarms.lanz.image(),
            website: "lanzerac.co.za",
            contactInfo: "+27 (0)21 887 1132 / info@lanzerac.co.za ",
            openHours:
                "Monday – Thursday: 10:00 – 17:00 Friday: 10:00 – 20:00 Saturday: 10:00 – 17:00 ",
            whyWeLoveIt:
                "Lanzerac is a stunning wine farm steeped in history, dating back to 1692 with the accolade of bottling the world’s first pinotage. The plot features beautiful traditional style buildings and they also have an amazing deli filled with delicious treats. We also highly recommend their wonderful day spa!",
          ),
          SizedBox(
            height: context.maxHeight * 0.1,
          ),
        ],
      ),
    );
  }
}

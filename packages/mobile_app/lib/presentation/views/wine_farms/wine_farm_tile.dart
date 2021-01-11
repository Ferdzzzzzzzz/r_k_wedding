import 'package:flutter/material.dart';
import 'package:wedding/presentation/views/wine_farms/wine_farm_title.dart';

class WineFarmTile extends StatelessWidget {
  final Image image;
  final String title;
  final String website;
  final String openHours;
  final String whyWeLoveIt;
  final String contactInfo;

  const WineFarmTile({
    this.title,
    this.image,
    this.website,
    this.openHours,
    this.whyWeLoveIt,
    this.contactInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        WineFarmTitle(title),
      ],
    );
  }
}

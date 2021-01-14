import 'package:flutter/material.dart';
import 'package:wedding/core/extensions/x_context.dart';

class LionsSchedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.symmetric(
        inside: const BorderSide(color: Colors.white),
        outside: const BorderSide(color: Colors.transparent),
      ),
      children: [
        _renderTitleRow(context, _titleRow),
        _renderRow(context, _row1),
        _renderRow(context, _row2),
        _renderRow(context, _row3),
        _renderRow(context, _row4),
        _renderRow(context, _row5),
        _renderRow(context, _row6),
        _renderRow(context, _row7),
        _renderRow(context, _row8),
      ],
    );
  }
}

const _titleRow = ["DATE", "MATCH", "LOCATION", "STADIUM"];
const _row1 = [
  "Sat, 03.07.21",
  "DHL Stormers",
  "Cape Town",
  "Cape Town Stadium"
];
const _row2 = [
  "Wed, 07.07.21",
  "South Africa Invitational",
  "Port Elizabeth",
  "Nelson Mandela Bay Stadium"
];
const _row3 = [
  "Sat, 10.07.21",
  "Cell C Sharks",
  "Durban",
  "Kings Park",
];
const _row4 = [
  "Wed, 14.07.21",
  "South Africa A",
  "Mbombela (Nelspruit)",
  "Mbombela Stadium"
];
const _row5 = [
  "Sat, 17.07.21",
  "Vodacom Bulls",
  "Pretoria",
  "Loftus Versfeld",
];
const _row6 = [
  "Sat, 24.07.21",
  "South Africa",
  "Johannesburg",
  "FNB Stadium",
];
const _row7 = [
  "Sat, 31.07.21",
  "South Africa",
  "Cape Town",
  "Cape Town Stadium"
];
const _row8 = [
  "Sat, 07.08.21",
  "South Africa",
  "Johannesburg",
  "FNB Stadium",
];

TableRow _renderTitleRow(BuildContext context, List<String> row) {
  return TableRow(children: [
    ...row.map((item) => Padding(
          padding: EdgeInsets.all(context.maxWidth * 0.02),
          child: Text(
            item,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        )),
  ]);
}

TableRow _renderRow(BuildContext context, List<String> row) {
  return TableRow(children: [
    ...row.map((item) => Padding(
          padding: EdgeInsets.all(context.maxWidth * 0.02),
          child: Text(
            item,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        )),
  ]);
}

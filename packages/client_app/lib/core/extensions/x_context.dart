import 'package:flutter/material.dart';

extension XContext on BuildContext {
  double get maxWidth => MediaQuery.of(this).size.width;
  double get maxHeight => MediaQuery.of(this).size.height;
}

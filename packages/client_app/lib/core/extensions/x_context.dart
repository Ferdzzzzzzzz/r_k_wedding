import 'package:flutter/material.dart';

import 'package:build_context/build_context.dart';

extension XContext on BuildContext {
  double get maxWidth => mediaQuerySize.width;

  double get maxHeight => mediaQuerySize.height;
}

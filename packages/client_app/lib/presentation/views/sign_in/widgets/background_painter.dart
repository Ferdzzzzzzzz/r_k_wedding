import 'dart:ui';

import 'package:client_app/gen/colors.gen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/animation.dart';

class BackgroundPainter extends CustomPainter {
  final Animation<double> animation;

  BackgroundPainter({
    @required this.animation,
  })  : brownPaint = Paint()
          ..color = ColorName.lightBrown
          ..style = PaintingStyle.fill,
        greenPaint = Paint()
          ..color = ColorName.mediumGreen
          ..style = PaintingStyle.fill,
        super(repaint: animation);

  final Paint brownPaint;
  final Paint greenPaint;

  @override
  void paint(Canvas canvas, Size size) {
    // _paintDarkBrown(canvas, size);
    _paintBrown(canvas, size);
    // _paintGreen(canvas, size);
  }

  void _paintBrown(Canvas canvas, Size size) {
    final path = Path();
    path.moveTo(size.width, size.height * 0.6);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, size.height * 0.9);

    path.quadraticBezierTo(
      size.width * 0.6,
      size.height * 0.9,
      size.width,
      size.height * 0.6,
    );

    // _addPointsToPath(path, [
    //   Point(size.width * 0.25, size.height * 0.8),
    //   Point(size.width * 0.5, size.height * 0.75),
    //   Point(size.width * 0.7, size.height * 0.8),
    //   Point(size.width * 0.8, size.height * 0.78),
    // ]);
    canvas.drawPath(path, brownPaint);
  }

  void _paintGreen(Canvas canvas, Size size) {
    final path = Path();
    path.moveTo(size.width, size.height * 0.9);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, size.height * 0.99);

    path.quadraticBezierTo(
      size.width * 0.6,
      size.height * 0.9,
      size.width,
      size.height * 0.6,
    );

    // _addPointsToPath(path, [
    //   Point(size.width * 0.25, size.height * 0.8),
    //   Point(size.width * 0.5, size.height * 0.75),
    //   Point(size.width * 0.7, size.height * 0.8),
    //   Point(size.width * 0.8, size.height * 0.78),
    // ]);
    canvas.drawPath(path, greenPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

  void _addPointsToPath(Path path, List<Point> points) {
    if (points.length < 3) {
      throw UnsupportedError('Need three or more points to create a path');
    }

    for (var i = 0; i < points.length - 2; i++) {
      final xc = (points[i].x + points[i + 1].x) / 2;
      final yc = (points[i].y + points[i + 1].y) / 2;
      path.quadraticBezierTo(points[i].x, points[i].y, xc, yc);
    }

    // connect last to points
    path.quadraticBezierTo(
      points[points.length - 2].x,
      points[points.length - 2].y,
      points[points.length - 1].x,
      points[points.length - 1].y,
    );
  }
}

class Point {
  final double x;
  final double y;

  Point(this.x, this.y);
}

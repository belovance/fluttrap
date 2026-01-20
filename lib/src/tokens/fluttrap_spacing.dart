import 'package:flutter/widgets.dart';

class FluttrapSpacing {
  const FluttrapSpacing({
    double base = 16.0,
    double? x1,
    double? x2,
    double? x3,
    double? x4,
    double? x5,
  }) : _x1 = x1 ?? base * 0.25,
       _x2 = x2 ?? base * 0.50,
       _x3 = x3 ?? base * 1.0,
       _x4 = x4 ?? base * 1.5,
       _x5 = x5 ?? base * 3.0;

  final double _x1;
  final double _x2;
  final double _x3;
  final double _x4;
  final double _x5;

  EdgeInsets get p0 => EdgeInsets.zero;
  EdgeInsets get p1 => EdgeInsets.all(_x1);
  EdgeInsets get p2 => EdgeInsets.all(_x2);
  EdgeInsets get p3 => EdgeInsets.all(_x3);
  EdgeInsets get p4 => EdgeInsets.all(_x4);
  EdgeInsets get p5 => EdgeInsets.all(_x5);

  EdgeInsets get m0 => EdgeInsets.zero;
  EdgeInsets get m1 => EdgeInsets.all(_x1);
  EdgeInsets get m2 => EdgeInsets.all(_x2);
  EdgeInsets get m3 => EdgeInsets.all(_x3);
  EdgeInsets get m4 => EdgeInsets.all(_x4);
  EdgeInsets get m5 => EdgeInsets.all(_x5);
}

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

  double get x0 => 0.0;
  double get x1 => _x1;
  double get x2 => _x2;
  double get x3 => _x3;
  double get x4 => _x4;
  double get x5 => _x5;
}

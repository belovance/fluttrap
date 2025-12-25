class FluttrapBorders {
  const FluttrapBorders({
    double? width1,
    double? width2,
    double? width3,
    double? width4,
    double? width5,
    double? radiusSm,
    double? radius,
    double? radiusLg,
    double? radiusXl,
    double? radiusXxl,
    double? radiusPill,
  }) : _width1 = width1 ?? 1.0,
       _width2 = width2 ?? 2.0,
       _width3 = width3 ?? 3.0,
       _width4 = width4 ?? 4.0,
       _width5 = width5 ?? 5.0,
       _radiusSm = radiusSm ?? 4.0,
       _radius = radius ?? 6.0,
       _radiusLg = radiusLg ?? 8.0,
       _radiusXl = radiusXl ?? 16.0,
       _radiusXxl = radiusXxl ?? 32.0,
       _radiusPill = radiusPill ?? 999.0;

  // ---- Border Width Tokens ----
  final double _width1;
  final double _width2;
  final double _width3;
  final double _width4;
  final double _width5;

  double get width1 => _width1;
  double get width2 => _width2;
  double get width3 => _width3;
  double get width4 => _width4;
  double get width5 => _width5;

  // ---- Border Radius Tokens ----
  final double _radiusSm;
  final double _radius;
  final double _radiusLg;
  final double _radiusXl;
  final double _radiusXxl;
  final double _radiusPill;

  double get radiusSm => _radiusSm;
  double get radius => _radius;
  double get radiusLg => _radiusLg;
  double get radiusXl => _radiusXl;
  double get radiusXxl => _radiusXxl;
  double get radiusPill => _radiusPill;
}

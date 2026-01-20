class FluttrapRadius {
  const FluttrapRadius({
    double? radiusSm,
    double? radius,
    double? radiusLg,
    double? radiusXl,
    double? radiusXxl,
    double? radiusPill,
  }) : _radiusSm = radiusSm ?? 4.0,
       _radius = radius ?? 6.0,
       _radiusLg = radiusLg ?? 8.0,
       _radiusXl = radiusXl ?? 16.0,
       _radiusXxl = radiusXxl ?? 32.0,
       _radiusPill = radiusPill ?? 999.0;

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

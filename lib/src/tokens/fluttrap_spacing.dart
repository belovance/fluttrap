class FluttrapSpacing {
  const FluttrapSpacing({
    double? base,
    double? s0,
    double? s1,
    double? s2,
    double? s3,
    double? s4,
    double? s5,
  }) : _s0 = s0 ?? 0.0,
       _s1 = s1 ?? (base ?? 16.0) * 0.25,
       _s2 = s2 ?? (base ?? 16.0) * 0.50,
       _s3 = s3 ?? (base ?? 16.0) * 1.0,
       _s4 = s4 ?? (base ?? 16.0) * 1.5,
       _s5 = s5 ?? (base ?? 16.0) * 3.0;

  final double _s0;
  final double _s1;
  final double _s2;
  final double _s3;
  final double _s4;
  final double _s5;

  double get s0 => _s0;
  double get s1 => _s1;
  double get s2 => _s2;
  double get s3 => _s3;
  double get s4 => _s4;
  double get s5 => _s5;
}

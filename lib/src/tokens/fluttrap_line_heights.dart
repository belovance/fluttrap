class FluttrapLineHeights {
  const FluttrapLineHeights({double? tight, double? normal, double? relaxed})
    : _tight = tight ?? 1.25,
      _normal = normal ?? 1.5,
      _relaxed = relaxed ?? 1.8;

  final double _tight;
  final double _normal;
  final double _relaxed;

  double get tight => _tight;
  double get normal => _normal;
  double get relaxed => _relaxed;
}

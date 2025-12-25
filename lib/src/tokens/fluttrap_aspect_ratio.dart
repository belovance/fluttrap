class FluttrapAspectRatio {
  const FluttrapAspectRatio({
    double? r1x1,
    double? r4x3,
    double? r3x4,
    double? r16x9,
    double? r9x16,
    double? r21x9,
    double? r9x21,
  }) : _r1x1 = r1x1 ?? 1.0,
       _r4x3 = r4x3 ?? (4 / 3),
       _r3x4 = r3x4 ?? (3 / 4),
       _r16x9 = r16x9 ?? (16 / 9),
       _r9x16 = r9x16 ?? (9 / 16),
       _r21x9 = r21x9 ?? (21 / 9),
       _r9x21 = r9x21 ?? (9 / 21);

  final double _r1x1;
  final double _r4x3;
  final double _r3x4;
  final double _r16x9;
  final double _r9x16;
  final double _r21x9;
  final double _r9x21;

  double get r1x1 => _r1x1;
  double get r4x3 => _r4x3;
  double get r3x4 => _r3x4;
  double get r16x9 => _r16x9;
  double get r9x16 => _r9x16;
  double get r21x9 => _r21x9;
  double get r9x21 => _r9x21;

  double custom(int width, int height) {
    if (width <= 0 || height <= 0) return 1.0;
    return width / height;
  }
}

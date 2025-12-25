class FluttrapFontSizes {
  const FluttrapFontSizes({
    double? fs1,
    double? fs2,
    double? fs3,
    double? fs4,
    double? fs5,
    double? fs6,
  }) : _fs1 = fs1 ?? 32,
       _fs2 = fs2 ?? 28,
       _fs3 = fs3 ?? 24,
       _fs4 = fs4 ?? 20,
       _fs5 = fs5 ?? 16,
       _fs6 = fs6 ?? 14;

  final double _fs1;
  final double _fs2;
  final double _fs3;
  final double _fs4;
  final double _fs5;
  final double _fs6;

  double get fs1 => _fs1;
  double get fs2 => _fs2;
  double get fs3 => _fs3;
  double get fs4 => _fs4;
  double get fs5 => _fs5;
  double get fs6 => _fs6;
}

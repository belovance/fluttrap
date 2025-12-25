class FluttrapOpacity {
  const FluttrapOpacity({
    double? opacity0,
    double? opacity25,
    double? opacity50,
    double? opacity75,
    double? opacity100,
  }) : _opacity0 = opacity0 ?? 0.0,
       _opacity25 = opacity25 ?? 0.25,
       _opacity50 = opacity50 ?? 0.5,
       _opacity75 = opacity75 ?? 0.75,
       _opacity100 = opacity100 ?? 1.0;

  final double _opacity0;
  final double _opacity25;
  final double _opacity50;
  final double _opacity75;
  final double _opacity100;

  double get opacity0 => _opacity0;
  double get opacity25 => _opacity25;
  double get opacity50 => _opacity50;
  double get opacity75 => _opacity75;
  double get opacity100 => _opacity100;
}

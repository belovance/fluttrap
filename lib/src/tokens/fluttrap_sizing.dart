class FluttrapSizing {
  const FluttrapSizing({
    double? width25,
    double? width50,
    double? width75,
    double? width100,

    double? height25,
    double? height50,
    double? height75,
    double? height100,
  }) : _width25 = width25 ?? 0.25,
       _width50 = width50 ?? 0.50,
       _width75 = width75 ?? 0.75,
       _width100 = width100 ?? 1.0,
       _height25 = height25 ?? 0.25,
       _height50 = height50 ?? 0.50,
       _height75 = height75 ?? 0.75,
       _height100 = height100 ?? 1.0;

  final double _width25;
  final double _width50;
  final double _width75;
  final double _width100;

  double get width25 => _width25;
  double get width50 => _width50;
  double get width75 => _width75;
  double get width100 => _width100;

  final double _height25;
  final double _height50;
  final double _height75;
  final double _height100;

  double get height25 => _height25;
  double get height50 => _height50;
  double get height75 => _height75;
  double get height100 => _height100;
}

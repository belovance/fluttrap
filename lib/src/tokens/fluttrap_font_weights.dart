import 'package:flutter/widgets.dart';

class FluttrapFontWeights {
  const FluttrapFontWeights({
    FontWeight? extraLight,
    FontWeight? light,
    FontWeight? regular,
    FontWeight? medium,
    FontWeight? semibold,
    FontWeight? bold,
    FontWeight? extraBold,
  }) : _extraLight = extraLight ?? FontWeight.w200,
       _light = light ?? FontWeight.w300,
       _regular = regular ?? FontWeight.w400,
       _medium = medium ?? FontWeight.w500,
       _semibold = semibold ?? FontWeight.w600,
       _bold = bold ?? FontWeight.w700,
       _extraBold = extraBold ?? FontWeight.w800;

  final FontWeight _extraLight;
  final FontWeight _light;
  final FontWeight _regular;
  final FontWeight _medium;
  final FontWeight _semibold;
  final FontWeight _bold;
  final FontWeight _extraBold;

  FontWeight get extraLight => _extraLight;
  FontWeight get light => _light;
  FontWeight get regular => _regular;
  FontWeight get medium => _medium;
  FontWeight get semibold => _semibold;
  FontWeight get bold => _bold;
  FontWeight get extraBold => _extraBold;
}

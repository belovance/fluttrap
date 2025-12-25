library;

import 'src/tokens/tokens.dart';

export 'src/tokens/tokens.dart';

class Fluttrap {
  Fluttrap._();

  static FluttrapAspectRatio _aspectRatio = const FluttrapAspectRatio();
  static FluttrapBorders _borders = const FluttrapBorders();
  static FluttrapColors _colors = const FluttrapColors();
  static FluttrapTypography _typography = FluttrapTypography(
    fontSizes: FluttrapFontSizes(),
    fontWeights: FluttrapFontWeights(),
    lineHeights: FluttrapLineHeights(),
  );
  static FluttrapOpacity _opacity = const FluttrapOpacity();
  static FluttrapShadows _shadows = const FluttrapShadows();
  static FluttrapSizing _sizing = const FluttrapSizing();
  static FluttrapSpacing _spacing = const FluttrapSpacing();

  static FluttrapAspectRatio get aspectRatio => _aspectRatio;
  static FluttrapBorders get borders => _borders;
  static FluttrapColors get colors => _colors;
  static FluttrapFontSizes get fontSizes => _typography.fontSizes;
  static FluttrapFontWeights get fontWeights => _typography.fontWeights;
  static FluttrapLineHeights get lineHeights => _typography.lineHeights;
  static FluttrapOpacity get opacity => _opacity;
  static FluttrapShadows get shadows => _shadows;
  static FluttrapSizing get sizing => _sizing;
  static FluttrapSpacing get spacing => _spacing;
  static FluttrapTypography get typography => _typography;

  static void override({
    FluttrapAspectRatio? aspectRatio,
    FluttrapBorders? borders,
    FluttrapColors? colors,
    FluttrapOpacity? opacity,
    FluttrapShadows? shadows,
    FluttrapSizing? sizing,
    FluttrapSpacing? spacing,
    FluttrapTypography? typography,
  }) {
    if (aspectRatio != null) _aspectRatio = aspectRatio;
    if (borders != null) _borders = borders;
    if (colors != null) _colors = colors;
    if (opacity != null) _opacity = opacity;
    if (shadows != null) _shadows = shadows;
    if (sizing != null) _sizing = sizing;
    if (spacing != null) _spacing = spacing;
    if (typography != null) _typography = typography;
  }
}

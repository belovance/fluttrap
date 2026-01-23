library;

import 'src/tokens/tokens.dart';

export 'src/tokens/tokens.dart';
export 'src/utilities/utilities.dart';
export 'src/extensions/extensions.dart';

/// <h1><img src="https://raw.githubusercontent.com/belovance/fluttrap/main/screenshots/fluttrap-logo.png" height="18"/> Fluttrap</h1>
///
/// A **production-ready, Bootstrap-inspired design and component framework for Flutter** that helps developers build **clean, responsive, scalable, and visually consistent apps faster** across mobile, web, and desktop.
///
/// With Fluttrap, you eliminate repetitive UI work, maintain a unified design language, and ship polished Flutter experiences with confidence.
///
/// ---
///
/// ### Learn More & Get Started
/// - Documentation & Guides: https://fluttrap.belovance.com
/// - GitHub Repository: https://github.com/belovance/fluttrap
/// - Issues & Feature Requests: https://github.com/belovance/fluttrap/issues
/// - Pub.dev Package: https://pub.dev/packages/fluttrap
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
  static FluttrapRadius _radius = const FluttrapRadius();
  static FluttrapShadows _shadows = const FluttrapShadows();
  static FluttrapSpacing _spacing = const FluttrapSpacing();

  static FluttrapAspectRatio get aspectRatio => _aspectRatio;
  static FluttrapBorders get borders => _borders;
  static FluttrapColors get colors => _colors;
  static FluttrapFontSizes get fontSizes => _typography.fontSizes;
  static FluttrapFontWeights get fontWeights => _typography.fontWeights;
  static FluttrapLineHeights get lineHeights => _typography.lineHeights;
  static FluttrapRadius get radius => _radius;
  static FluttrapShadows get shadows => _shadows;
  static FluttrapSpacing get spacing => _spacing;
  static FluttrapTypography get typography => _typography;

  static void override({
    FluttrapAspectRatio? aspectRatio,
    FluttrapBorders? borders,
    FluttrapColors? colors,
    FluttrapRadius? radius,
    FluttrapShadows? shadows,
    FluttrapSpacing? spacing,
    FluttrapTypography? typography,
  }) {
    if (aspectRatio != null) _aspectRatio = aspectRatio;
    if (borders != null) _borders = borders;
    if (colors != null) _colors = colors;
    if (radius != null) _radius = radius;
    if (shadows != null) _shadows = shadows;
    if (spacing != null) _spacing = spacing;
    if (typography != null) _typography = typography;
  }
}

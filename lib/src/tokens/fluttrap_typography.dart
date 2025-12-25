import 'package:flutter/widgets.dart';

import 'fluttrap_font_sizes.dart';
import 'fluttrap_font_weights.dart';
import 'fluttrap_line_heights.dart';

class FluttrapTypography {
  FluttrapTypography({
    FluttrapFontSizes fontSizes = const FluttrapFontSizes(),
    FluttrapFontWeights fontWeights = const FluttrapFontWeights(),
    FluttrapLineHeights lineHeights = const FluttrapLineHeights(),

    TextStyle? h1,
    TextStyle? h2,
    TextStyle? h3,
    TextStyle? h4,
    TextStyle? h5,
    TextStyle? h6,

    TextStyle? display1,
    TextStyle? display2,
    TextStyle? display3,
    TextStyle? display4,
    TextStyle? display5,
    TextStyle? display6,

    TextStyle? body,
    TextStyle? lead,
    TextStyle? small,

    TextStyle? blockquote,
    TextStyle? blockquoteFooter,

    TextStyle? bold,
    TextStyle? italic,
    TextStyle? underline,
    TextStyle? strike,
  }) : _fontSizes = fontSizes,
       _fontWeights = fontWeights,
       _lineHeights = lineHeights,

       /// ---------- Headings ----------
       _h1 =
           h1 ??
           TextStyle(
             fontSize: fontSizes.fs1,
             fontWeight: fontWeights.bold,
             height: lineHeights.tight,
           ),
       _h2 =
           h2 ??
           TextStyle(
             fontSize: fontSizes.fs2,
             fontWeight: fontWeights.bold,
             height: lineHeights.tight,
           ),
       _h3 =
           h3 ??
           TextStyle(
             fontSize: fontSizes.fs3,
             fontWeight: fontWeights.semibold,
             height: lineHeights.normal,
           ),
       _h4 =
           h4 ??
           TextStyle(
             fontSize: fontSizes.fs4,
             fontWeight: fontWeights.semibold,
             height: lineHeights.normal,
           ),
       _h5 =
           h5 ??
           TextStyle(
             fontSize: fontSizes.fs5,
             fontWeight: fontWeights.medium,
             height: lineHeights.normal,
           ),
       _h6 =
           h6 ??
           TextStyle(
             fontSize: fontSizes.fs6,
             fontWeight: fontWeights.medium,
             height: lineHeights.normal,
           ),

       /// ---------- Display ----------
       _display1 =
           display1 ??
           TextStyle(
             fontSize: fontSizes.fs1 * 1.6,
             fontWeight: fontWeights.extraBold,
             height: lineHeights.tight,
           ),
       _display2 =
           display2 ??
           TextStyle(
             fontSize: fontSizes.fs1 * 1.4,
             fontWeight: fontWeights.extraBold,
             height: lineHeights.tight,
           ),
       _display3 =
           display3 ??
           TextStyle(
             fontSize: fontSizes.fs1 * 1.2,
             fontWeight: fontWeights.bold,
             height: lineHeights.tight,
           ),
       _display4 =
           display4 ??
           TextStyle(
             fontSize: fontSizes.fs1 * 1.1,
             fontWeight: fontWeights.bold,
             height: lineHeights.tight,
           ),
       _display5 =
           display5 ??
           TextStyle(
             fontSize: fontSizes.fs1,
             fontWeight: fontWeights.bold,
             height: lineHeights.normal,
           ),
       _display6 =
           display6 ??
           TextStyle(
             fontSize: fontSizes.fs2,
             fontWeight: fontWeights.bold,
             height: lineHeights.normal,
           ),

       /// ---------- Body ----------
       _body =
           body ??
           TextStyle(
             fontSize: fontSizes.fs5,
             fontWeight: fontWeights.regular,
             height: lineHeights.normal,
           ),
       _lead =
           lead ??
           TextStyle(
             fontSize: fontSizes.fs5,
             fontWeight: fontWeights.light,
             height: lineHeights.relaxed,
           ),
       _small =
           small ??
           TextStyle(
             fontSize: fontSizes.fs6,
             fontWeight: fontWeights.regular,
             height: lineHeights.normal,
           ),

       /// ---------- Block Quote ----------
       _blockquote =
           blockquote ??
           TextStyle(
             fontSize: fontSizes.fs4,
             fontWeight: fontWeights.light,
             fontStyle: FontStyle.italic,
             height: lineHeights.relaxed,
           ),
       _blockquoteFooter =
           blockquoteFooter ??
           TextStyle(
             fontSize: fontSizes.fs6,
             fontWeight: fontWeights.light,
             height: lineHeights.normal,
           ),

       /// ---------- Inline ----------
       _bold = bold ?? TextStyle(fontWeight: fontWeights.bold),
       _italic = italic ?? TextStyle(fontStyle: FontStyle.italic),
       _underline =
           underline ?? TextStyle(decoration: TextDecoration.underline),
       _strike = strike ?? TextStyle(decoration: TextDecoration.lineThrough);

  /// ---------- TOKENS ----------
  final FluttrapFontSizes _fontSizes;
  final FluttrapFontWeights _fontWeights;
  final FluttrapLineHeights _lineHeights;

  FluttrapFontSizes get fontSizes => _fontSizes;
  FluttrapFontWeights get fontWeights => _fontWeights;
  FluttrapLineHeights get lineHeights => _lineHeights;

  /// ---------- Headings ----------
  final TextStyle _h1;
  final TextStyle _h2;
  final TextStyle _h3;
  final TextStyle _h4;
  final TextStyle _h5;
  final TextStyle _h6;

  TextStyle get h1 => _h1;
  TextStyle get h2 => _h2;
  TextStyle get h3 => _h3;
  TextStyle get h4 => _h4;
  TextStyle get h5 => _h5;
  TextStyle get h6 => _h6;

  /// ---------- Displays ----------
  final TextStyle _display1;
  final TextStyle _display2;
  final TextStyle _display3;
  final TextStyle _display4;
  final TextStyle _display5;
  final TextStyle _display6;

  TextStyle get display1 => _display1;
  TextStyle get display2 => _display2;
  TextStyle get display3 => _display3;
  TextStyle get display4 => _display4;
  TextStyle get display5 => _display5;
  TextStyle get display6 => _display6;

  /// ---------- Body ----------
  final TextStyle _body;
  final TextStyle _lead;
  final TextStyle _small;

  TextStyle get body => _body;
  TextStyle get lead => _lead;
  TextStyle get small => _small;

  /// ---------- Blockquote ----------
  final TextStyle _blockquote;
  final TextStyle _blockquoteFooter;

  TextStyle get blockquote => _blockquote;
  TextStyle get blockquoteFooter => _blockquoteFooter;

  /// ---------- Inline ----------
  final TextStyle _bold;
  final TextStyle _italic;
  final TextStyle _underline;
  final TextStyle _strike;

  TextStyle get bold => _bold;
  TextStyle get italic => _italic;
  TextStyle get underline => _underline;
  TextStyle get strike => _strike;
}

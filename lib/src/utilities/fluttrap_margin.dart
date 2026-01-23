import 'package:flutter/widgets.dart';
import 'package:fluttrap/fluttrap.dart';

class FluttrapMargin {
  const FluttrapMargin._();

  static FluttrapSpacing get _spacing => Fluttrap.spacing;

  // =============================================================
  // Core builders
  // =============================================================

  static FluttrapBox m({
    Key? key,
    required double value,
    required Widget child,
  }) => _box(key: key, child: child, margin: EdgeInsets.all(value));

  static FluttrapBox mx({
    Key? key,
    required double value,
    required Widget child,
  }) => _box(
    key: key,
    child: child,
    margin: EdgeInsets.symmetric(horizontal: value),
  );

  static FluttrapBox my({
    Key? key,
    required double value,
    required Widget child,
  }) => _box(
    key: key,
    child: child,
    margin: EdgeInsets.symmetric(vertical: value),
  );

  static FluttrapBox mt({
    Key? key,
    required double value,
    required Widget child,
  }) => _side(key: key, child: child, top: value);

  static FluttrapBox mb({
    Key? key,
    required double value,
    required Widget child,
  }) => _side(key: key, child: child, bottom: value);

  static FluttrapBox ms({
    Key? key,
    required double value,
    required Widget child,
  }) => _side(key: key, child: child, left: value);

  static FluttrapBox me({
    Key? key,
    required double value,
    required Widget child,
  }) => _side(key: key, child: child, right: value);

  // =============================================================
  // Auto
  // =============================================================

  static FluttrapBox mAuto({Key? key, required Widget child}) => FluttrapBox(
    key: key,
    margin: const EdgeInsets.all(double.infinity),
    child: child,
  );

  static FluttrapBox mxAuto({Key? key, required Widget child}) => FluttrapBox(
    key: key,
    margin: const EdgeInsets.symmetric(horizontal: double.infinity),
    child: child,
  );

  static FluttrapBox myAuto({Key? key, required Widget child}) => FluttrapBox(
    key: key,
    margin: const EdgeInsets.symmetric(vertical: double.infinity),
    child: child,
  );

  // =============================================================
  // Scale helpers (Bootstrap style: 0–5)
  // =============================================================

  // ---- All sides ----
  static FluttrapBox m0({Key? key, required Widget child}) =>
      m(key: key, value: _spacing.x0, child: child);
  static FluttrapBox m1({Key? key, required Widget child}) =>
      m(key: key, value: _spacing.x1, child: child);
  static FluttrapBox m2({Key? key, required Widget child}) =>
      m(key: key, value: _spacing.x2, child: child);
  static FluttrapBox m3({Key? key, required Widget child}) =>
      m(key: key, value: _spacing.x3, child: child);
  static FluttrapBox m4({Key? key, required Widget child}) =>
      m(key: key, value: _spacing.x4, child: child);
  static FluttrapBox m5({Key? key, required Widget child}) =>
      m(key: key, value: _spacing.x5, child: child);

  // ---- X axis ----
  static FluttrapBox mx0({Key? key, required Widget child}) =>
      mx(key: key, value: _spacing.x0, child: child);
  static FluttrapBox mx1({Key? key, required Widget child}) =>
      mx(key: key, value: _spacing.x1, child: child);
  static FluttrapBox mx2({Key? key, required Widget child}) =>
      mx(key: key, value: _spacing.x2, child: child);
  static FluttrapBox mx3({Key? key, required Widget child}) =>
      mx(key: key, value: _spacing.x3, child: child);
  static FluttrapBox mx4({Key? key, required Widget child}) =>
      mx(key: key, value: _spacing.x4, child: child);
  static FluttrapBox mx5({Key? key, required Widget child}) =>
      mx(key: key, value: _spacing.x5, child: child);

  // ---- Y axis ----
  static FluttrapBox my0({Key? key, required Widget child}) =>
      my(key: key, value: _spacing.x0, child: child);
  static FluttrapBox my1({Key? key, required Widget child}) =>
      my(key: key, value: _spacing.x1, child: child);
  static FluttrapBox my2({Key? key, required Widget child}) =>
      my(key: key, value: _spacing.x2, child: child);
  static FluttrapBox my3({Key? key, required Widget child}) =>
      my(key: key, value: _spacing.x3, child: child);
  static FluttrapBox my4({Key? key, required Widget child}) =>
      my(key: key, value: _spacing.x4, child: child);
  static FluttrapBox my5({Key? key, required Widget child}) =>
      my(key: key, value: _spacing.x5, child: child);

  // ---- Top ----
  static FluttrapBox mt0({Key? key, required Widget child}) =>
      mt(key: key, value: _spacing.x0, child: child);
  static FluttrapBox mt1({Key? key, required Widget child}) =>
      mt(key: key, value: _spacing.x1, child: child);
  static FluttrapBox mt2({Key? key, required Widget child}) =>
      mt(key: key, value: _spacing.x2, child: child);
  static FluttrapBox mt3({Key? key, required Widget child}) =>
      mt(key: key, value: _spacing.x3, child: child);
  static FluttrapBox mt4({Key? key, required Widget child}) =>
      mt(key: key, value: _spacing.x4, child: child);
  static FluttrapBox mt5({Key? key, required Widget child}) =>
      mt(key: key, value: _spacing.x5, child: child);

  // ---- Bottom ----
  static FluttrapBox mb0({Key? key, required Widget child}) =>
      mb(key: key, value: _spacing.x0, child: child);
  static FluttrapBox mb1({Key? key, required Widget child}) =>
      mb(key: key, value: _spacing.x1, child: child);
  static FluttrapBox mb2({Key? key, required Widget child}) =>
      mb(key: key, value: _spacing.x2, child: child);
  static FluttrapBox mb3({Key? key, required Widget child}) =>
      mb(key: key, value: _spacing.x3, child: child);
  static FluttrapBox mb4({Key? key, required Widget child}) =>
      mb(key: key, value: _spacing.x4, child: child);
  static FluttrapBox mb5({Key? key, required Widget child}) =>
      mb(key: key, value: _spacing.x5, child: child);

  // ---- Start (left) ----
  static FluttrapBox ms0({Key? key, required Widget child}) =>
      ms(key: key, value: _spacing.x0, child: child);
  static FluttrapBox ms1({Key? key, required Widget child}) =>
      ms(key: key, value: _spacing.x1, child: child);
  static FluttrapBox ms2({Key? key, required Widget child}) =>
      ms(key: key, value: _spacing.x2, child: child);
  static FluttrapBox ms3({Key? key, required Widget child}) =>
      ms(key: key, value: _spacing.x3, child: child);
  static FluttrapBox ms4({Key? key, required Widget child}) =>
      ms(key: key, value: _spacing.x4, child: child);
  static FluttrapBox ms5({Key? key, required Widget child}) =>
      ms(key: key, value: _spacing.x5, child: child);

  // ---- End (right) ----
  static FluttrapBox me0({Key? key, required Widget child}) =>
      me(key: key, value: _spacing.x0, child: child);
  static FluttrapBox me1({Key? key, required Widget child}) =>
      me(key: key, value: _spacing.x1, child: child);
  static FluttrapBox me2({Key? key, required Widget child}) =>
      me(key: key, value: _spacing.x2, child: child);
  static FluttrapBox me3({Key? key, required Widget child}) =>
      me(key: key, value: _spacing.x3, child: child);
  static FluttrapBox me4({Key? key, required Widget child}) =>
      me(key: key, value: _spacing.x4, child: child);
  static FluttrapBox me5({Key? key, required Widget child}) =>
      me(key: key, value: _spacing.x5, child: child);

  // =============================================================
  // Internals
  // =============================================================

  static FluttrapBox _box({
    Key? key,
    required Widget child,
    required EdgeInsets margin,
  }) => FluttrapBox(key: key, margin: margin, child: child);

  static FluttrapBox _side({
    Key? key,
    required Widget child,
    double? top,
    double? bottom,
    double? left,
    double? right,
  }) => FluttrapBox(
    key: key,
    margin: EdgeInsets.only(
      top: top ?? 0,
      bottom: bottom ?? 0,
      left: left ?? 0,
      right: right ?? 0,
    ),
    child: child,
  );
}

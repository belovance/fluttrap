import 'package:flutter/widgets.dart';
import 'package:fluttrap/fluttrap.dart';

class FluttrapPadding {
  const FluttrapPadding._();

  static FluttrapSpacing get _spacing => Fluttrap.spacing;

  // =============================================================
  // Core builders (raw value)
  // =============================================================

  static FluttrapBox p({
    Key? key,
    required double value,
    required Widget child,
  }) => _box(key: key, child: child, padding: EdgeInsets.all(value));

  static FluttrapBox px({
    Key? key,
    required double value,
    required Widget child,
  }) => _box(
    key: key,
    child: child,
    padding: EdgeInsets.symmetric(horizontal: value),
  );

  static FluttrapBox py({
    Key? key,
    required double value,
    required Widget child,
  }) => _box(
    key: key,
    child: child,
    padding: EdgeInsets.symmetric(vertical: value),
  );

  static FluttrapBox pt({
    Key? key,
    required double value,
    required Widget child,
  }) => _side(key: key, child: child, top: value);

  static FluttrapBox pb({
    Key? key,
    required double value,
    required Widget child,
  }) => _side(key: key, child: child, bottom: value);

  static FluttrapBox ps({
    Key? key,
    required double value,
    required Widget child,
  }) => _side(key: key, child: child, left: value);

  static FluttrapBox pe({
    Key? key,
    required double value,
    required Widget child,
  }) => _side(key: key, child: child, right: value);

  // =============================================================
  // Scale helpers (0–5)
  // =============================================================

  // ---- All sides ----
  static FluttrapBox p0({Key? key, required Widget child}) =>
      p(key: key, value: _spacing.x0, child: child);
  static FluttrapBox p1({Key? key, required Widget child}) =>
      p(key: key, value: _spacing.x1, child: child);
  static FluttrapBox p2({Key? key, required Widget child}) =>
      p(key: key, value: _spacing.x2, child: child);
  static FluttrapBox p3({Key? key, required Widget child}) =>
      p(key: key, value: _spacing.x3, child: child);
  static FluttrapBox p4({Key? key, required Widget child}) =>
      p(key: key, value: _spacing.x4, child: child);
  static FluttrapBox p5({Key? key, required Widget child}) =>
      p(key: key, value: _spacing.x5, child: child);

  // ---- X axis ----
  static FluttrapBox px0({Key? key, required Widget child}) =>
      px(key: key, value: _spacing.x0, child: child);
  static FluttrapBox px1({Key? key, required Widget child}) =>
      px(key: key, value: _spacing.x1, child: child);
  static FluttrapBox px2({Key? key, required Widget child}) =>
      px(key: key, value: _spacing.x2, child: child);
  static FluttrapBox px3({Key? key, required Widget child}) =>
      px(key: key, value: _spacing.x3, child: child);
  static FluttrapBox px4({Key? key, required Widget child}) =>
      px(key: key, value: _spacing.x4, child: child);
  static FluttrapBox px5({Key? key, required Widget child}) =>
      px(key: key, value: _spacing.x5, child: child);

  // ---- Y axis ----
  static FluttrapBox py0({Key? key, required Widget child}) =>
      py(key: key, value: _spacing.x0, child: child);
  static FluttrapBox py1({Key? key, required Widget child}) =>
      py(key: key, value: _spacing.x1, child: child);
  static FluttrapBox py2({Key? key, required Widget child}) =>
      py(key: key, value: _spacing.x2, child: child);
  static FluttrapBox py3({Key? key, required Widget child}) =>
      py(key: key, value: _spacing.x3, child: child);
  static FluttrapBox py4({Key? key, required Widget child}) =>
      py(key: key, value: _spacing.x4, child: child);
  static FluttrapBox py5({Key? key, required Widget child}) =>
      py(key: key, value: _spacing.x5, child: child);

  // ---- Top ----
  static FluttrapBox pt0({Key? key, required Widget child}) =>
      pt(key: key, value: _spacing.x0, child: child);
  static FluttrapBox pt1({Key? key, required Widget child}) =>
      pt(key: key, value: _spacing.x1, child: child);
  static FluttrapBox pt2({Key? key, required Widget child}) =>
      pt(key: key, value: _spacing.x2, child: child);
  static FluttrapBox pt3({Key? key, required Widget child}) =>
      pt(key: key, value: _spacing.x3, child: child);
  static FluttrapBox pt4({Key? key, required Widget child}) =>
      pt(key: key, value: _spacing.x4, child: child);
  static FluttrapBox pt5({Key? key, required Widget child}) =>
      pt(key: key, value: _spacing.x5, child: child);

  // ---- Bottom ----
  static FluttrapBox pb0({Key? key, required Widget child}) =>
      pb(key: key, value: _spacing.x0, child: child);
  static FluttrapBox pb1({Key? key, required Widget child}) =>
      pb(key: key, value: _spacing.x1, child: child);
  static FluttrapBox pb2({Key? key, required Widget child}) =>
      pb(key: key, value: _spacing.x2, child: child);
  static FluttrapBox pb3({Key? key, required Widget child}) =>
      pb(key: key, value: _spacing.x3, child: child);
  static FluttrapBox pb4({Key? key, required Widget child}) =>
      pb(key: key, value: _spacing.x4, child: child);
  static FluttrapBox pb5({Key? key, required Widget child}) =>
      pb(key: key, value: _spacing.x5, child: child);

  // ---- Start (left) ----
  static FluttrapBox ps0({Key? key, required Widget child}) =>
      ps(key: key, value: _spacing.x0, child: child);
  static FluttrapBox ps1({Key? key, required Widget child}) =>
      ps(key: key, value: _spacing.x1, child: child);
  static FluttrapBox ps2({Key? key, required Widget child}) =>
      ps(key: key, value: _spacing.x2, child: child);
  static FluttrapBox ps3({Key? key, required Widget child}) =>
      ps(key: key, value: _spacing.x3, child: child);
  static FluttrapBox ps4({Key? key, required Widget child}) =>
      ps(key: key, value: _spacing.x4, child: child);
  static FluttrapBox ps5({Key? key, required Widget child}) =>
      ps(key: key, value: _spacing.x5, child: child);

  // ---- End (right) ----
  static FluttrapBox pe0({Key? key, required Widget child}) =>
      pe(key: key, value: _spacing.x0, child: child);
  static FluttrapBox pe1({Key? key, required Widget child}) =>
      pe(key: key, value: _spacing.x1, child: child);
  static FluttrapBox pe2({Key? key, required Widget child}) =>
      pe(key: key, value: _spacing.x2, child: child);
  static FluttrapBox pe3({Key? key, required Widget child}) =>
      pe(key: key, value: _spacing.x3, child: child);
  static FluttrapBox pe4({Key? key, required Widget child}) =>
      pe(key: key, value: _spacing.x4, child: child);
  static FluttrapBox pe5({Key? key, required Widget child}) =>
      pe(key: key, value: _spacing.x5, child: child);

  // =============================================================
  // Internals
  // =============================================================

  static FluttrapBox _box({
    Key? key,
    required Widget child,
    required EdgeInsets padding,
  }) => FluttrapBox(key: key, padding: padding, child: child);

  static FluttrapBox _side({
    Key? key,
    required Widget child,
    double? top,
    double? bottom,
    double? left,
    double? right,
  }) => FluttrapBox(
    key: key,
    padding: EdgeInsets.only(
      top: top ?? 0,
      bottom: bottom ?? 0,
      left: left ?? 0,
      right: right ?? 0,
    ),
    child: child,
  );
}

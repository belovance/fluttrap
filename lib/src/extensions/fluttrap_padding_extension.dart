import 'package:flutter/widgets.dart';
import 'package:fluttrap/fluttrap.dart';

extension FluttrapPaddingExtension on Widget {
  // -------------------------------
  // Internal helpers
  // -------------------------------

  FluttrapBox _asBox() {
    if (this is FluttrapBox) return this as FluttrapBox;
    return FluttrapBox(child: this);
  }

  EdgeInsets _mergePadding(
    EdgeInsets? current, {
    double? top,
    double? bottom,
    double? left,
    double? right,
  }) {
    final c = current ?? EdgeInsets.zero;

    return EdgeInsets.only(
      top: top ?? c.top,
      bottom: bottom ?? c.bottom,
      left: left ?? c.left,
      right: right ?? c.right,
    );
  }

  FluttrapBox _applyPadding({
    double? all,
    double? x,
    double? y,
    double? top,
    double? bottom,
    double? left,
    double? right,
  }) {
    final box = _asBox();
    final current = box.padding as EdgeInsets?;

    double? t = top ?? (y ?? all);
    double? b = bottom ?? (y ?? all);
    double? l = left ?? (x ?? all);
    double? r = right ?? (x ?? all);

    final merged = _mergePadding(current, top: t, bottom: b, left: l, right: r);

    return box.copyWith(padding: merged);
  }

  // -------------------------------
  // Scale helpers (0–5)
  // -------------------------------

  FluttrapSpacing get _s => Fluttrap.spacing;

  // ---- all ----
  FluttrapBox p(double value) => _applyPadding(all: value);
  FluttrapBox get p0 => _applyPadding(all: _s.x0);
  FluttrapBox get p1 => _applyPadding(all: _s.x1);
  FluttrapBox get p2 => _applyPadding(all: _s.x2);
  FluttrapBox get p3 => _applyPadding(all: _s.x3);
  FluttrapBox get p4 => _applyPadding(all: _s.x4);
  FluttrapBox get p5 => _applyPadding(all: _s.x5);

  // ---- axis ----
  FluttrapBox px(double value) => _applyPadding(x: value);
  FluttrapBox get px0 => _applyPadding(x: _s.x0);
  FluttrapBox get px1 => _applyPadding(x: _s.x1);
  FluttrapBox get px2 => _applyPadding(x: _s.x2);
  FluttrapBox get px3 => _applyPadding(x: _s.x3);
  FluttrapBox get px4 => _applyPadding(x: _s.x4);
  FluttrapBox get px5 => _applyPadding(x: _s.x5);

  FluttrapBox py(double value) => _applyPadding(y: value);
  FluttrapBox get py0 => _applyPadding(y: _s.x0);
  FluttrapBox get py1 => _applyPadding(y: _s.x1);
  FluttrapBox get py2 => _applyPadding(y: _s.x2);
  FluttrapBox get py3 => _applyPadding(y: _s.x3);
  FluttrapBox get py4 => _applyPadding(y: _s.x4);
  FluttrapBox get py5 => _applyPadding(y: _s.x5);

  // ---- sides ----
  FluttrapBox pt(double value) => _applyPadding(top: value);
  FluttrapBox get pt0 => _applyPadding(top: _s.x0);
  FluttrapBox get pt1 => _applyPadding(top: _s.x1);
  FluttrapBox get pt2 => _applyPadding(top: _s.x2);
  FluttrapBox get pt3 => _applyPadding(top: _s.x3);
  FluttrapBox get pt4 => _applyPadding(top: _s.x4);
  FluttrapBox get pt5 => _applyPadding(top: _s.x5);

  FluttrapBox pb(double value) => _applyPadding(bottom: value);
  FluttrapBox get pb0 => _applyPadding(bottom: _s.x0);
  FluttrapBox get pb1 => _applyPadding(bottom: _s.x1);
  FluttrapBox get pb2 => _applyPadding(bottom: _s.x2);
  FluttrapBox get pb3 => _applyPadding(bottom: _s.x3);
  FluttrapBox get pb4 => _applyPadding(bottom: _s.x4);
  FluttrapBox get pb5 => _applyPadding(bottom: _s.x5);

  FluttrapBox ps(double value) => _applyPadding(left: value);
  FluttrapBox get ps0 => _applyPadding(left: _s.x0);
  FluttrapBox get ps1 => _applyPadding(left: _s.x1);
  FluttrapBox get ps2 => _applyPadding(left: _s.x2);
  FluttrapBox get ps3 => _applyPadding(left: _s.x3);
  FluttrapBox get ps4 => _applyPadding(left: _s.x4);
  FluttrapBox get ps5 => _applyPadding(left: _s.x5);

  FluttrapBox pe(double value) => _applyPadding(right: value);
  FluttrapBox get pe0 => _applyPadding(right: _s.x0);
  FluttrapBox get pe1 => _applyPadding(right: _s.x1);
  FluttrapBox get pe2 => _applyPadding(right: _s.x2);
  FluttrapBox get pe3 => _applyPadding(right: _s.x3);
  FluttrapBox get pe4 => _applyPadding(right: _s.x4);
  FluttrapBox get pe5 => _applyPadding(right: _s.x5);
}

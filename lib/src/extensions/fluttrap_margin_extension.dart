import 'package:flutter/widgets.dart';
import 'package:fluttrap/fluttrap.dart';

extension FluttrapMarginExtension on Widget {
  // -------------------------------
  // Internal helpers
  // -------------------------------

  FluttrapBox _asBox() {
    if (this is FluttrapBox) return this as FluttrapBox;
    return FluttrapBox(child: this);
  }

  EdgeInsets _mergeMargin(
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

  FluttrapBox _applyMargin({
    double? all,
    double? x,
    double? y,
    double? top,
    double? bottom,
    double? left,
    double? right,
  }) {
    final box = _asBox();
    final current = box.margin as EdgeInsets?;

    double? t = top ?? (y ?? all);
    double? b = bottom ?? (y ?? all);
    double? l = left ?? (x ?? all);
    double? r = right ?? (x ?? all);

    final merged = _mergeMargin(current, top: t, bottom: b, left: l, right: r);

    return box.copyWith(margin: merged);
  }

  FluttrapSpacing get _s => Fluttrap.spacing;

  // -------------------------------
  // All sides
  // -------------------------------

  FluttrapBox m(double value) => _applyMargin(all: value);
  FluttrapBox get m0 => _applyMargin(all: _s.x0);
  FluttrapBox get m1 => _applyMargin(all: _s.x1);
  FluttrapBox get m2 => _applyMargin(all: _s.x2);
  FluttrapBox get m3 => _applyMargin(all: _s.x3);
  FluttrapBox get m4 => _applyMargin(all: _s.x4);
  FluttrapBox get m5 => _applyMargin(all: _s.x5);

  // -------------------------------
  // Axis
  // -------------------------------

  FluttrapBox mx(double value) => _applyMargin(x: value);
  FluttrapBox get mx0 => _applyMargin(x: _s.x0);
  FluttrapBox get mx1 => _applyMargin(x: _s.x1);
  FluttrapBox get mx2 => _applyMargin(x: _s.x2);
  FluttrapBox get mx3 => _applyMargin(x: _s.x3);
  FluttrapBox get mx4 => _applyMargin(x: _s.x4);
  FluttrapBox get mx5 => _applyMargin(x: _s.x5);

  FluttrapBox my(double value) => _applyMargin(y: value);
  FluttrapBox get my0 => _applyMargin(y: _s.x0);
  FluttrapBox get my1 => _applyMargin(y: _s.x1);
  FluttrapBox get my2 => _applyMargin(y: _s.x2);
  FluttrapBox get my3 => _applyMargin(y: _s.x3);
  FluttrapBox get my4 => _applyMargin(y: _s.x4);
  FluttrapBox get my5 => _applyMargin(y: _s.x5);

  // -------------------------------
  // Sides
  // -------------------------------

  FluttrapBox mt(double value) => _applyMargin(top: value);
  FluttrapBox get mt0 => _applyMargin(top: _s.x0);
  FluttrapBox get mt1 => _applyMargin(top: _s.x1);
  FluttrapBox get mt2 => _applyMargin(top: _s.x2);
  FluttrapBox get mt3 => _applyMargin(top: _s.x3);
  FluttrapBox get mt4 => _applyMargin(top: _s.x4);
  FluttrapBox get mt5 => _applyMargin(top: _s.x5);

  FluttrapBox mb(double value) => _applyMargin(bottom: value);
  FluttrapBox get mb0 => _applyMargin(bottom: _s.x0);
  FluttrapBox get mb1 => _applyMargin(bottom: _s.x1);
  FluttrapBox get mb2 => _applyMargin(bottom: _s.x2);
  FluttrapBox get mb3 => _applyMargin(bottom: _s.x3);
  FluttrapBox get mb4 => _applyMargin(bottom: _s.x4);
  FluttrapBox get mb5 => _applyMargin(bottom: _s.x5);

  FluttrapBox ms(double value) => _applyMargin(left: value);
  FluttrapBox get ms0 => _applyMargin(left: _s.x0);
  FluttrapBox get ms1 => _applyMargin(left: _s.x1);
  FluttrapBox get ms2 => _applyMargin(left: _s.x2);
  FluttrapBox get ms3 => _applyMargin(left: _s.x3);
  FluttrapBox get ms4 => _applyMargin(left: _s.x4);
  FluttrapBox get ms5 => _applyMargin(left: _s.x5);

  FluttrapBox me(double value) => _applyMargin(right: value);
  FluttrapBox get me0 => _applyMargin(right: _s.x0);
  FluttrapBox get me1 => _applyMargin(right: _s.x1);
  FluttrapBox get me2 => _applyMargin(right: _s.x2);
  FluttrapBox get me3 => _applyMargin(right: _s.x3);
  FluttrapBox get me4 => _applyMargin(right: _s.x4);
  FluttrapBox get me5 => _applyMargin(right: _s.x5);

  // -------------------------------
  // Auto (Bootstrap mx-auto)
  // -------------------------------

  FluttrapBox get mAuto {
    final box = _asBox();
    final current = box.margin as EdgeInsets?;

    final merged = _mergeMargin(
      current,
      top: double.infinity,
      bottom: double.infinity,
      left: double.infinity,
      right: double.infinity,
    );

    return box.copyWith(margin: merged);
  }

  FluttrapBox get mxAuto {
    final box = _asBox();
    final current = box.margin as EdgeInsets?;

    final merged = _mergeMargin(
      current,
      left: double.infinity,
      right: double.infinity,
    );

    return box.copyWith(margin: merged);
  }

  FluttrapBox get myAuto {
    final box = _asBox();
    final current = box.margin as EdgeInsets?;

    final merged = _mergeMargin(
      current,
      top: double.infinity,
      bottom: double.infinity,
    );

    return box.copyWith(margin: merged);
  }
}

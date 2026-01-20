import 'package:flutter/widgets.dart';
import 'package:fluttrap/fluttrap.dart';

extension FluttrapSizingExtension on Widget {
  FluttrapBox _wrap({double? width, double? height}) {
    final self = this;

    if (self is FluttrapBox) {
      return self.copyWith(
        width: width ?? self.width,
        height: height ?? self.height,
      );
    }

    return FluttrapBox(width: width, height: height, child: self);
  }

  double get _screenW =>
      WidgetsBinding
          .instance
          .platformDispatcher
          .views
          .first
          .physicalSize
          .width /
      WidgetsBinding.instance.platformDispatcher.views.first.devicePixelRatio;

  double get _screenH =>
      WidgetsBinding
          .instance
          .platformDispatcher
          .views
          .first
          .physicalSize
          .height /
      WidgetsBinding.instance.platformDispatcher.views.first.devicePixelRatio;

  // =============================
  // Width %
  // =============================

  FluttrapBox w(double factor) => _wrap(width: _screenW * factor);
  FluttrapBox get w25 => _wrap(width: _screenW * 0.25);
  FluttrapBox get w50 => _wrap(width: _screenW * 0.50);
  FluttrapBox get w75 => _wrap(width: _screenW * 0.75);
  FluttrapBox get w100 => _wrap(width: _screenW);
  FluttrapBox get wAuto => _wrap(width: null);

  // =============================
  // Height %
  // =============================

  FluttrapBox h(double factor) => _wrap(height: _screenH * factor);
  FluttrapBox get h25 => _wrap(height: _screenH * 0.25);
  FluttrapBox get h50 => _wrap(height: _screenH * 0.50);
  FluttrapBox get h75 => _wrap(height: _screenH * 0.75);
  FluttrapBox get h100 => _wrap(height: _screenH);
  FluttrapBox get hAuto => _wrap(height: null);
}

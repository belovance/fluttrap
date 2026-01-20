import 'package:flutter/widgets.dart';
import 'package:fluttrap/fluttrap.dart';

extension FluttrapOpacityExtension on Widget {
  FluttrapBox _wrapBoxWithOpacity(double opacity) {
    final self = this;

    if (self is FluttrapBox) {
      return self.copyWith(opacity: opacity);
    }

    return FluttrapBox(opacity: opacity, child: self);
  }

  /// Generic
  Widget opacity(double value) => _wrapBoxWithOpacity(value);

  /// Bootstrap-style helpers
  Widget get opacity0 => _wrapBoxWithOpacity(0.0);
  Widget get opacity25 => _wrapBoxWithOpacity(0.25);
  Widget get opacity50 => _wrapBoxWithOpacity(0.5);
  Widget get opacity75 => _wrapBoxWithOpacity(0.75);
  Widget get opacity100 => _wrapBoxWithOpacity(1.0);
}

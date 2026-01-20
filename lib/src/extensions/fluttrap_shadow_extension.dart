import 'package:flutter/widgets.dart';
import 'package:fluttrap/fluttrap.dart';

extension FluttrapShadowExtension on Widget {
  FluttrapShadows get _shadows => Fluttrap.shadows;

  FluttrapBox _wrapBox({List<BoxShadow>? shadow}) {
    final self = this;

    if (self is FluttrapBox) {
      return self.copyWith(shadow: shadow);
    }

    return FluttrapBox(shadow: shadow, child: self);
  }

  /// .shadow-sm
  FluttrapBox get shadowSm => _wrapBox(shadow: _shadows.shadowSm);

  /// .shadow
  FluttrapBox get shadow => _wrapBox(shadow: _shadows.shadow);

  /// .shadow-lg
  FluttrapBox get shadowLg => _wrapBox(shadow: _shadows.shadowLg);
}

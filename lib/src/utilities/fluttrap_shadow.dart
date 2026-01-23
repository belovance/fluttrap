import 'package:flutter/widgets.dart';
import 'package:fluttrap/fluttrap.dart';

class FluttrapShadow {
  const FluttrapShadow._();

  static final FluttrapShadows _shadows = Fluttrap.shadows;

  static FluttrapBox sm({Key? key, required Widget child}) {
    return FluttrapBox(key: key, shadow: _shadows.shadowSm, child: child);
  }

  static FluttrapBox regular({Key? key, required Widget child}) {
    return FluttrapBox(key: key, shadow: _shadows.shadow, child: child);
  }

  static FluttrapBox lg({Key? key, required Widget child}) {
    return FluttrapBox(key: key, shadow: _shadows.shadowLg, child: child);
  }
}

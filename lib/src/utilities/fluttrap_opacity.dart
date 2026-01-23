import 'package:flutter/widgets.dart';

import 'package:fluttrap/fluttrap.dart';

class FluttrapOpacity {
  const FluttrapOpacity._();

  static FluttrapBox opacity0({Key? key, required Widget child}) =>
      FluttrapBox(key: key, opacity: 0.0, child: child);

  static FluttrapBox opacity25({Key? key, required Widget child}) =>
      FluttrapBox(key: key, opacity: 0.25, child: child);

  static FluttrapBox opacity50({Key? key, required Widget child}) =>
      FluttrapBox(key: key, opacity: 0.5, child: child);

  static FluttrapBox opacity75({Key? key, required Widget child}) =>
      FluttrapBox(key: key, opacity: 0.75, child: child);

  static FluttrapBox opacity100({Key? key, required Widget child}) =>
      FluttrapBox(key: key, opacity: 1.0, child: child);
}

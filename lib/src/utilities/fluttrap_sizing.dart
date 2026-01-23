import 'package:flutter/widgets.dart';
import 'package:fluttrap/fluttrap.dart';

class FluttrapSizing {
  const FluttrapSizing();

  FluttrapBox w25({Key? key, required Widget child}) =>
      _width(child, 0.25, key);

  FluttrapBox w50({Key? key, required Widget child}) =>
      _width(child, 0.50, key);

  FluttrapBox w75({Key? key, required Widget child}) =>
      _width(child, 0.75, key);

  FluttrapBox w100({Key? key, required Widget child}) =>
      _width(child, 1.0, key);

  FluttrapBox wAuto({Key? key, required Widget child}) =>
      FluttrapBox(key: key, width: null, child: child);

  FluttrapBox h25({Key? key, required Widget child}) =>
      _height(child, 0.25, key);

  FluttrapBox h50({Key? key, required Widget child}) =>
      _height(child, 0.50, key);

  FluttrapBox h75({Key? key, required Widget child}) =>
      _height(child, 0.75, key);

  FluttrapBox h100({Key? key, required Widget child}) =>
      _height(child, 1.0, key);

  FluttrapBox hAuto({Key? key, required Widget child}) =>
      FluttrapBox(key: key, height: null, child: child);

  FluttrapBox _width(Widget child, double factor, Key? key) {
    final screenWidth =
        WidgetsBinding
            .instance
            .platformDispatcher
            .views
            .first
            .physicalSize
            .width /
        WidgetsBinding.instance.platformDispatcher.views.first.devicePixelRatio;

    return FluttrapBox(key: key, width: screenWidth * factor, child: child);
  }

  FluttrapBox _height(Widget child, double factor, Key? key) {
    final screenHeight =
        WidgetsBinding
            .instance
            .platformDispatcher
            .views
            .first
            .physicalSize
            .height /
        WidgetsBinding.instance.platformDispatcher.views.first.devicePixelRatio;

    return FluttrapBox(key: key, height: screenHeight * factor, child: child);
  }
}

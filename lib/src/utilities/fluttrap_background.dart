import 'package:flutter/widgets.dart';
import 'package:fluttrap/fluttrap.dart';

class FluttrapBackground {
  const FluttrapBackground._();

  static final FluttrapColors _colors = Fluttrap.colors;

  static FluttrapBox primary({Key? key, required Widget child}) =>
      FluttrapBox(key: key, color: _colors.primary, child: child);

  static FluttrapBox secondary({Key? key, required Widget child}) =>
      FluttrapBox(key: key, color: _colors.secondary, child: child);

  static FluttrapBox success({Key? key, required Widget child}) =>
      FluttrapBox(key: key, color: _colors.success, child: child);

  static FluttrapBox info({Key? key, required Widget child}) =>
      FluttrapBox(key: key, color: _colors.info, child: child);

  static FluttrapBox warning({Key? key, required Widget child}) =>
      FluttrapBox(key: key, color: _colors.warning, child: child);

  static FluttrapBox danger({Key? key, required Widget child}) =>
      FluttrapBox(key: key, color: _colors.danger, child: child);

  static FluttrapBox light({Key? key, required Widget child}) =>
      FluttrapBox(key: key, color: _colors.light, child: child);

  static FluttrapBox dark({Key? key, required Widget child}) =>
      FluttrapBox(key: key, color: _colors.dark, child: child);

  static FluttrapBox white({Key? key, required Widget child}) =>
      FluttrapBox(key: key, color: _colors.white, child: child);

  static FluttrapBox black({Key? key, required Widget child}) =>
      FluttrapBox(key: key, color: _colors.black, child: child);

  static FluttrapBox transparent({Key? key, required Widget child}) =>
      FluttrapBox(key: key, color: _colors.transparent, child: child);
}

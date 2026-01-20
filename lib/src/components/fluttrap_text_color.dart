import 'package:flutter/widgets.dart';
import 'package:fluttrap/fluttrap.dart';

class FluttrapTextColor {
  const FluttrapTextColor._();

  static final FluttrapColors _colors = Fluttrap.colors;

  static Widget _applyColor({Key? key, required Widget child, Color? color}) {
    return DefaultTextStyle.merge(
      key: key,
      style: TextStyle(color: color),
      child: child,
    );
  }

  static Widget primary({Key? key, required Widget child}) =>
      _applyColor(key: key, child: child, color: _colors.primary);
  static Widget secondary({Key? key, required Widget child}) =>
      _applyColor(key: key, child: child, color: _colors.secondary);
  static Widget success({Key? key, required Widget child}) =>
      _applyColor(key: key, child: child, color: _colors.success);
  static Widget info({Key? key, required Widget child}) =>
      _applyColor(key: key, child: child, color: _colors.info);
  static Widget warning({Key? key, required Widget child}) =>
      _applyColor(key: key, child: child, color: _colors.warning);
  static Widget danger({Key? key, required Widget child}) =>
      _applyColor(key: key, child: child, color: _colors.danger);
  static Widget light({Key? key, required Widget child}) =>
      _applyColor(key: key, child: child, color: _colors.light);
  static Widget dark({Key? key, required Widget child}) =>
      _applyColor(key: key, child: child, color: _colors.dark);
  static Widget black({Key? key, required Widget child}) =>
      _applyColor(key: key, child: child, color: _colors.black);
  static Widget white({Key? key, required Widget child}) =>
      _applyColor(key: key, child: child, color: _colors.white);
}

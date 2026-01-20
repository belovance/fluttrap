import 'package:flutter/widgets.dart';
import 'package:fluttrap/fluttrap.dart';

class FluttrapBorder {
  const FluttrapBorder._();

  static final _colors = Fluttrap.colors;
  static final _borders = Fluttrap.borders;

  static BorderSide _side({
    Color? color,
    double? width,
    BorderStyle style = BorderStyle.solid,
  }) {
    return BorderSide(
      color: color ?? _colors.secondary,
      width: width ?? _borders.width1,
      style: style,
    );
  }

  static BorderRadiusGeometry? _radius(double? radius) {
    return radius == null ? null : BorderRadius.circular(radius);
  }

  static FluttrapBox all({
    Key? key,
    required Widget child,
    Color? color,
    double? width,
    double? radius,
    BorderStyle style = BorderStyle.solid,
  }) {
    return FluttrapBox(
      key: key,
      border: Border.all(
        color: color ?? _colors.secondary,
        width: width ?? _borders.width1,
        style: style,
      ),
      borderRadius: _radius(radius),
      child: child,
    );
  }

  static FluttrapBox symmetric({
    Key? key,
    required Widget child,

    bool vertical = false,
    bool horizontal = false,

    Color? color,
    double? width,
    double? radius,
    BorderStyle style = BorderStyle.solid,
  }) {
    final side = _side(color: color, width: width, style: style);

    return FluttrapBox(
      key: key,
      border: Border.symmetric(
        vertical: vertical ? side : BorderSide.none,
        horizontal: horizontal ? side : BorderSide.none,
      ),
      borderRadius: _radius(radius),
      child: child,
    );
  }

  static FluttrapBox only({
    Key? key,
    required Widget child,

    bool top = false,
    bool right = false,
    bool bottom = false,
    bool left = false,

    Color? color,
    double? width,
    double? radius,
    BorderStyle style = BorderStyle.solid,
  }) {
    final side = _side(color: color, width: width, style: style);

    return FluttrapBox(
      key: key,
      border: Border(
        top: top ? side : BorderSide.none,
        right: right ? side : BorderSide.none,
        bottom: bottom ? side : BorderSide.none,
        left: left ? side : BorderSide.none,
      ),
      borderRadius: _radius(radius),
      child: child,
    );
  }

  static FluttrapBox directional({
    Key? key,
    required Widget child,

    bool top = false,
    bool start = false,
    bool end = false,
    bool bottom = false,

    Color? color,
    double? width,
    double? radius,
    BorderStyle style = BorderStyle.solid,
  }) {
    final side = _side(color: color, width: width, style: style);

    return FluttrapBox(
      key: key,
      border: BorderDirectional(
        top: top ? side : BorderSide.none,
        start: start ? side : BorderSide.none,
        end: end ? side : BorderSide.none,
        bottom: bottom ? side : BorderSide.none,
      ),
      borderRadius: _radius(radius),
      child: child,
    );
  }

  static FluttrapBox custom({
    Key? key,
    required Widget child,

    BorderSide? top,
    BorderSide? right,
    BorderSide? bottom,
    BorderSide? left,

    double? radius,
  }) {
    return FluttrapBox(
      key: key,
      border: Border(
        top: top ?? BorderSide.none,
        right: right ?? BorderSide.none,
        bottom: bottom ?? BorderSide.none,
        left: left ?? BorderSide.none,
      ),
      borderRadius: _radius(radius),
      child: child,
    );
  }
}

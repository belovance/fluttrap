import 'package:flutter/widgets.dart';
import 'package:fluttrap/fluttrap.dart';

extension FluttrapBorderExtension on Widget {
  FluttrapColors get _colors => Fluttrap.colors;
  FluttrapBorders get _borders => Fluttrap.borders;
  FluttrapRadius get _radius => Fluttrap.radius;

  FluttrapBox _wrapBox({Border? border, BorderRadiusGeometry? radius}) {
    final self = this;

    if (self is FluttrapBox) {
      return self.copyWith(
        border: border ?? self.border,
        borderRadius: radius ?? self.borderRadius,
      );
    }

    return FluttrapBox(border: border, borderRadius: radius, child: self);
  }

  Border? _currentBorder() {
    final self = this;
    if (self is FluttrapBox && self.border is Border) {
      return self.border as Border;
    }
    return null;
  }

  static const Color _noColor = Color(0x00000000);

  BorderSide _applyPatch(BorderSide current, BorderSide incoming) {
    return BorderSide(
      color: incoming.color.alpha != 0 ? incoming.color : current.color,
      width: incoming.width != 0 ? incoming.width : current.width,
      style: current.style,
    );
  }

  Border _combineBorder(Border current, Border incoming) {
    return Border(
      top: _applyPatch(current.top, incoming.top),
      right: _applyPatch(current.right, incoming.right),
      bottom: _applyPatch(current.bottom, incoming.bottom),
      left: _applyPatch(current.left, incoming.left),
    );
  }

  Widget _mergeBorder(Border incoming) {
    final current = _currentBorder();
    final result = current == null
        ? incoming
        : _combineBorder(current, incoming);
    return _wrapBox(border: result);
  }

  Widget _setRadius(BorderRadiusGeometry radius) {
    return _wrapBox(radius: radius);
  }

  Widget borderColor(Color c) => _mergeBorder(Border.all(color: c, width: 0));

  Widget get borderPrimary => borderColor(_colors.primary);
  Widget get borderSecondary => borderColor(_colors.secondary);
  Widget get borderSuccess => borderColor(_colors.success);
  Widget get borderInfo => borderColor(_colors.info);
  Widget get borderWarning => borderColor(_colors.warning);
  Widget get borderDanger => borderColor(_colors.danger);
  Widget get borderLight => borderColor(_colors.light);
  Widget get borderDark => borderColor(_colors.dark);
  Widget get borderWhite => borderColor(_colors.white);
  Widget get borderBlack => borderColor(_colors.black);

  Widget borderWidth(double w) =>
      _mergeBorder(Border.all(width: w, color: _noColor));

  Widget get border1 => borderWidth(_borders.width1);
  Widget get border2 => borderWidth(_borders.width2);
  Widget get border3 => borderWidth(_borders.width3);
  Widget get border4 => borderWidth(_borders.width4);
  Widget get border5 => borderWidth(_borders.width5);

  Widget rounded(double r) => _setRadius(BorderRadius.circular(r));

  Widget get rounded1 => rounded(_radius.radiusSm);
  Widget get rounded2 => rounded(_radius.radius);
  Widget get rounded3 => rounded(_radius.radiusLg);
  Widget get rounded4 => rounded(_radius.radiusXl);
  Widget get rounded5 => rounded(_radius.radiusXxl);
  Widget get roundedPill => rounded(_radius.radiusPill);
  Widget get roundedCircle => rounded(999999);
}

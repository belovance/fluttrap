import 'package:flutter/widgets.dart';
import 'package:fluttrap/fluttrap.dart';

extension FluttrapTextColorExtension on Widget {
  FluttrapColors get _colors => Fluttrap.colors;

  Widget textColor(Color? color) {
    return DefaultTextStyle.merge(
      style: TextStyle(color: color),
      child: this,
    );
  }

  Widget get textPrimary => textColor(_colors.primary);
  Widget get textSecondary => textColor(_colors.secondary);
  Widget get textSuccess => textColor(_colors.success);
  Widget get textInfo => textColor(_colors.info);
  Widget get textWarning => textColor(_colors.warning);
  Widget get textDanger => textColor(_colors.danger);
  Widget get textLight => textColor(_colors.light);
  Widget get textDark => textColor(_colors.dark);
  Widget get textBlack => textColor(_colors.black);
  Widget get textWhite => textColor(_colors.white);
}

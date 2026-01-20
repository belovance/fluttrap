import 'package:fluttrap/fluttrap.dart';
import 'package:flutter/widgets.dart';

extension FluttrapBackgroundExtension on Widget {
  FluttrapColors get _colors => Fluttrap.colors;

  Widget bg(Color color) {
    final self = this;
    if (self is FluttrapBox) {
      return self.copyWith(color: color);
    }
    return FluttrapBox(color: color, child: self);
  }

  Widget get bgPrimary => bg(_colors.primary);
  Widget get bgSecondary => bg(_colors.secondary);
  Widget get bgSuccess => bg(_colors.success);
  Widget get bgInfo => bg(_colors.info);
  Widget get bgWarning => bg(_colors.warning);
  Widget get bgDanger => bg(_colors.danger);
  Widget get bgLight => bg(_colors.light);
  Widget get bgDark => bg(_colors.dark);
  Widget get bgWhite => bg(_colors.white);
  Widget get bgBlack => bg(_colors.black);
  Widget get bgTransparent => bg(_colors.transparent);
}

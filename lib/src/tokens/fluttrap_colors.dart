import 'package:flutter/widgets.dart';

class FluttrapColors {
  const FluttrapColors({
    Color? primary,
    Color? secondary,
    Color? success,
    Color? info,
    Color? warning,
    Color? danger,
    Color? light,
    Color? dark,
  }) : _primary = primary ?? const Color(0xFF0D6EFD),
       _secondary = secondary ?? const Color(0xFF6C757D),
       _success = success ?? const Color(0xFF198754),
       _info = info ?? const Color(0xFF0DCAF0),
       _warning = warning ?? const Color(0xFFFFC107),
       _danger = danger ?? const Color(0xFFDC3545),
       _light = light ?? const Color(0xFFF8F9FA),
       _dark = dark ?? const Color(0xFF212529);

  final Color _primary;
  final Color _secondary;
  final Color _success;
  final Color _info;
  final Color _warning;
  final Color _danger;
  final Color _light;
  final Color _dark;

  Color get primary => _primary;
  Color get secondary => _secondary;
  Color get success => _success;
  Color get info => _info;
  Color get warning => _warning;
  Color get danger => _danger;
  Color get light => _light;
  Color get dark => _dark;
}

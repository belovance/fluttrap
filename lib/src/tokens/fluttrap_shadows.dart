import 'package:flutter/widgets.dart';

class FluttrapShadows {
  const FluttrapShadows({
    List<BoxShadow>? shadowSm,
    List<BoxShadow>? shadow,
    List<BoxShadow>? shadowLg,
  }) : _shadowSm =
           shadowSm ??
           const [
             BoxShadow(
               offset: Offset(0, 2),
               blurRadius: 4,
               spreadRadius: 0,
               color: Color(0x1A000000),
             ),
           ],
       _shadow =
           shadow ??
           const [
             BoxShadow(
               offset: Offset(0, 8),
               blurRadius: 24,
               spreadRadius: 0,
               color: Color(0x26000000),
             ),
           ],
       _shadowLg =
           shadowLg ??
           const [
             BoxShadow(
               offset: Offset(0, 16),
               blurRadius: 48,
               spreadRadius: 0,
               color: Color(0x2C000000),
             ),
           ];

  final List<BoxShadow> _shadowSm;
  final List<BoxShadow> _shadow;
  final List<BoxShadow> _shadowLg;

  List<BoxShadow> get shadowSm => _shadowSm;
  List<BoxShadow> get shadow => _shadow;
  List<BoxShadow> get shadowLg => _shadowLg;
}

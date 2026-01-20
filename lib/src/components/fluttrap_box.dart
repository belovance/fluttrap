import 'package:flutter/widgets.dart';

class FluttrapBox extends StatelessWidget {
  final Widget? child;

  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final AlignmentGeometry? alignment;

  final Color? color;
  final Gradient? gradient;
  final DecorationImage? backgroundImage;

  final BoxBorder? border;
  final BorderRadiusGeometry? borderRadius;
  final List<BoxShadow>? shadow;

  final double? width;
  final double? height;
  final BoxConstraints? constraints;

  final Clip? clipBehavior;

  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  final VoidCallback? onDoubleTap;

  final MouseCursor? cursor;

  final String? semanticsLabel;
  final bool enabled;

  const FluttrapBox({
    super.key,
    this.child,
    this.margin,
    this.padding,
    this.alignment,
    this.color,
    this.gradient,
    this.backgroundImage,
    this.border,
    this.borderRadius,
    this.shadow,
    this.width,
    this.height,
    this.constraints,
    this.clipBehavior,
    this.onTap,
    this.onLongPress,
    this.onDoubleTap,
    this.cursor,
    this.semanticsLabel,
    this.enabled = true,
  });

  bool get _interactive =>
      enabled && (onTap != null || onLongPress != null || onDoubleTap != null);

  BoxDecoration? get _decoration {
    if (color == null &&
        gradient == null &&
        backgroundImage == null &&
        border == null &&
        borderRadius == null &&
        (shadow == null || shadow!.isEmpty)) {
      return null;
    }

    return BoxDecoration(
      color: color,
      gradient: gradient,
      image: backgroundImage,
      border: border,
      borderRadius: borderRadius,
      boxShadow: shadow,
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget content = Container(
      alignment: alignment,
      width: width,
      height: height,
      padding: padding,
      constraints: constraints,
      decoration: _decoration,
      clipBehavior: clipBehavior ?? Clip.none,
      child: child,
    );

    if (margin != null) {
      content = Padding(padding: margin!, child: content);
    }

    if (_interactive) {
      content = MouseRegion(
        cursor: cursor ?? SystemMouseCursors.click,
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: onTap,
          onLongPress: onLongPress,
          onDoubleTap: onDoubleTap,
          child: content,
        ),
      );
    }

    if (semanticsLabel != null) {
      content = Semantics(
        label: semanticsLabel,
        button: _interactive,
        enabled: enabled,
        child: content,
      );
    }

    return content;
  }

  FluttrapBox copyWith({
    Key? key,
    Widget? child,
    EdgeInsetsGeometry? margin,
    EdgeInsetsGeometry? padding,
    AlignmentGeometry? alignment,
    Color? color,
    Gradient? gradient,
    DecorationImage? backgroundImage,
    BoxBorder? border,
    BorderRadiusGeometry? borderRadius,
    List<BoxShadow>? shadow,
    double? width,
    double? height,
    BoxConstraints? constraints,
    bool? clip,
    Clip? clipBehavior,
    VoidCallback? onTap,
    VoidCallback? onLongPress,
    VoidCallback? onDoubleTap,
    MouseCursor? cursor,
    String? semanticsLabel,
    bool? enabled,
  }) {
    return FluttrapBox(
      key: key ?? this.key,
      margin: margin ?? this.margin,
      padding: padding ?? this.padding,
      alignment: alignment ?? this.alignment,
      color: color ?? this.color,
      gradient: gradient ?? this.gradient,
      backgroundImage: backgroundImage ?? this.backgroundImage,
      border: border ?? this.border,
      borderRadius: borderRadius ?? this.borderRadius,
      shadow: shadow ?? this.shadow,
      width: width ?? this.width,
      height: height ?? this.height,
      constraints: constraints ?? this.constraints,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      onTap: onTap ?? this.onTap,
      onLongPress: onLongPress ?? this.onLongPress,
      onDoubleTap: onDoubleTap ?? this.onDoubleTap,
      cursor: cursor ?? this.cursor,
      semanticsLabel: semanticsLabel ?? this.semanticsLabel,
      enabled: enabled ?? this.enabled,
      child: child ?? this.child,
    );
  }
}

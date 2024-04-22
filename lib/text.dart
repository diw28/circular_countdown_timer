import 'package:flutter/material.dart' as m;

class Text extends m.Text {
  const Text(
    super.data, {
    super.key,
    super.style,
    super.strutStyle,
    super.textAlign,
    super.textDirection,
    super.locale,
    super.softWrap,
    super.overflow,
    m.TextScaler? textScaler,
    super.maxLines,
    super.semanticsLabel,
    super.textWidthBasis,
    super.textHeightBehavior,
    super.selectionColor,
  }) : super(
          textScaler: textScaler ?? const m.TextScaler.linear(1),
        );
}

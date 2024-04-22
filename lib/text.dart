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

class TextField extends m.StatelessWidget {
  final bool? enabled;
  final m.FocusNode? focusNode;
  final m.TextAlign? textAlign;
  final m.TextInputAction? textInputAction;
  final m.InputDecoration? decoration;
  final m.TextInputType? keyboardType;
  final m.TextStyle? style;
  final bool? obscureText;
  final String? obscuringCharacter;
  final int? maxLength;
  final m.ScrollController? scrollController;
  final m.ScrollPhysics? scrollPhysics;
  final void Function(String)? onChanged;
  final int? maxLines;
  final void Function(String)? onSubmitted;
  final m.TextEditingController? controller;

  const TextField({
    super.key,
    this.enabled,
    this.focusNode,
    this.textAlign,
    this.textInputAction,
    this.decoration,
    this.keyboardType,
    this.style,
    this.obscureText,
    this.obscuringCharacter,
    this.maxLength,
    this.maxLines,
    this.onChanged,
    this.onSubmitted,
    this.scrollPhysics,
    this.scrollController,
    this.controller,
  });

  @override
  m.Widget build(m.BuildContext context) {
    final mqData = m.MediaQuery.of(context);
    final mqDataNew = mqData.copyWith(textScaler: const m.TextScaler.linear(1));
    return m.MediaQuery(
      data: mqDataNew,
      child: m.TextField(
        enabled: enabled,
        focusNode: focusNode,
        textAlignVertical: m.TextAlignVertical.center,
        textAlign: textAlign ?? m.TextAlign.start,
        textInputAction: textInputAction,
        cursorColor: m.Colors.black,
        decoration: decoration,
        keyboardType: keyboardType,
        style: style,
        obscureText: obscureText ?? false,
        obscuringCharacter: obscuringCharacter ?? '•',
        maxLength: maxLength,
        maxLines: maxLines,
        onChanged: onChanged,
        onSubmitted: onSubmitted,
        scrollPhysics: scrollPhysics,
        scrollController: scrollController,
        controller: controller,
      ),
    );
  }
}

import 'package:flutter/material.dart';

TextStyle createStyle(Color color, BuildContext context) {
  ThemeData theme = Theme.of(context);
  return theme.textTheme.displaySmall!.copyWith(color: color);
}

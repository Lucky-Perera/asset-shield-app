import 'package:flutter/material.dart';

extension AppTextThemeContext on BuildContext {
  TextTheme get appTextTheme => Theme.of(this).textTheme;
}

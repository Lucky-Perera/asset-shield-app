import 'package:flutter/material.dart';

class AppTextStyles {
  static TextStyle caption(BuildContext context) =>
      Theme.of(context).textTheme.labelSmall!;
  static TextStyle label(BuildContext context) =>
      Theme.of(context).textTheme.labelMedium!;
  static TextStyle base(BuildContext context) =>
      Theme.of(context).textTheme.bodyMedium!;
  static TextStyle h1(BuildContext context) =>
      Theme.of(context).textTheme.titleLarge!;
  static TextStyle h2(BuildContext context) =>
      Theme.of(context).textTheme.titleMedium!;
  static TextStyle display1(BuildContext context) =>
      Theme.of(context).textTheme.headlineMedium!;
  static TextStyle display2(BuildContext context) =>
      Theme.of(context).textTheme.headlineLarge!;
}

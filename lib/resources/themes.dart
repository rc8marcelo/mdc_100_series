import 'package:flutter/material.dart';
import 'package:shrine/resources/resources.dart';
import 'package:shrine/supplemental/cut_corners_border.dart';

ThemeData buildShrineTheme() {
  final ThemeData base = ThemeData.light(useMaterial3: true);
  return base.copyWith(
      colorScheme: base.colorScheme.copyWith(
        primary: kShrinePurple,
        onPrimary: kShrineBrown900,
        secondary: kShrinePurple,
        error: kShrineErrorRed,
      ),
      textTheme: _buildShrineTextTheme(base.textTheme),
      textSelectionTheme: const TextSelectionThemeData(
        selectionColor: kShrinePurple,
      ),
      appBarTheme: const AppBarTheme(
        foregroundColor: kShrineBrown900,
        backgroundColor: kShrinePink100,
      ),
      inputDecorationTheme: const InputDecorationTheme(
        border: CutCornersBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: kShrinePurple,
          ),
        ),
        floatingLabelStyle: TextStyle(color: kShrinePurple),
      ));
}

TextTheme _buildShrineTextTheme(TextTheme base) {
  return base
      .copyWith(
        headlineSmall: base.headlineSmall!.copyWith(
          fontWeight: FontWeight.w500,
        ),
        titleLarge: base.titleLarge!.copyWith(
          fontSize: 18.0,
        ),
        bodySmall: base.bodySmall!.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14.0,
        ),
        bodyLarge: base.bodyLarge!.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 16.0,
        ),
      )
      .apply(
        fontFamily: 'Rubik',
        displayColor: kShrineBrown900,
        bodyColor: kShrineBrown900,
      );
}

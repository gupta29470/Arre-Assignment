import 'package:arre_assignment/styles/app_color/app_colors_helper.dart';
import 'package:flutter/material.dart';

class ButtonThemeHelper {
  static ButtonStyle get updateLanguageStyle => ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          AppColorsHelper.synergy,
        ),
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(
            horizontal: 32,
            vertical: 16,
          ),
        ),
        shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
        ),
      );
}

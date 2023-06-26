import 'package:arre_assignment/styles/app_color/app_colors_helper.dart';
import 'package:flutter/material.dart';

class TextThemeHelper {
  static const TextStyle aquaTint_14_400 = TextStyle(
    color: AppColorsHelper.aquaTint,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: "Acumin-Pro",
  );

  static TextStyle aquaTint_14_700 = aquaTint_14_400.copyWith(
    fontWeight: FontWeight.w700,
  );

  static TextStyle synergy_14_700 = aquaTint_14_400.copyWith(
    fontWeight: FontWeight.w700,
    color: AppColorsHelper.synergy,
  );

  static TextStyle synergy_14_400_underlined = aquaTint_14_400.copyWith(
    fontWeight: FontWeight.w400,
    color: AppColorsHelper.synergy,
    decoration: TextDecoration.underline,
  );

  static TextStyle aquaTint_20_700 = aquaTint_14_400.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );

  static TextStyle dimGrey_14_400 = aquaTint_14_400.copyWith(
    color: AppColorsHelper.dimGrey,
  );

  static TextStyle synergy_12_400 = aquaTint_14_400.copyWith(
    fontSize: 12,
    color: AppColorsHelper.synergy,
  );

  static TextStyle white_14_700 = aquaTint_14_400.copyWith(
    color: AppColorsHelper.white,
    fontWeight: FontWeight.w700,
  );
}

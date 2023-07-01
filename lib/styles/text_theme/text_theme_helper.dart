import 'package:arre_assignment/styles/app_color/app_colors_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextThemeHelper {
  static TextStyle aquaTint80_14_400 = TextStyle(
    color: AppColorsHelper.aquaTint_80,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: "Acumin-Pro",
    height: 16.8 / 14,
  );

  static TextStyle accountAppBarTitleStyle = aquaTint80_14_400.copyWith(
    fontWeight: FontWeight.w700,
    letterSpacing: 0.56,
    color: AppColorsHelper.aquaTint,
  );

  static TextStyle highlightActionTextStyle = aquaTint80_14_400.copyWith(
    fontWeight: FontWeight.w700,
    letterSpacing: -0.47,
  );

  static TextStyle logoutTextStyle = aquaTint80_14_400.copyWith(
    fontWeight: FontWeight.w700,
    color: AppColorsHelper.synergy,
    letterSpacing: -0.47,
  );

  static TextStyle englishLanguageTextStyle = aquaTint80_14_400.copyWith(
    fontSize: 12,
    color: AppColorsHelper.synergy,
    height: 13.49 / 12,
  );

  static TextStyle languageTextStyle = GoogleFonts.hind(
    fontSize: 12,
    color: AppColorsHelper.synergy,
    height: 13.49 / 12,
    fontWeight: FontWeight.w400,
  );

  static TextStyle englishSelectedLanguageTextStyle =
      aquaTint80_14_400.copyWith(
    fontSize: 12,
    color: AppColorsHelper.creoleSauce,
    height: 13.49 / 12,
  );

  static TextStyle languageSelectedTextStyle = GoogleFonts.hind(
    fontSize: 12,
    color: AppColorsHelper.creoleSauce,
    height: 13.49 / 12,
    fontWeight: FontWeight.w400,
  );

  static TextStyle languageCancelTextStyle = aquaTint80_14_400.copyWith(
    color: AppColorsHelper.spinnaker.withOpacity(0.6),
    fontWeight: FontWeight.w700,
    letterSpacing: 0.7,
  );

  static TextStyle editLanguageTextStyle = aquaTint80_14_400.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: AppColorsHelper.aquaTint,
    height: 24 / 20,
    letterSpacing: -0.91,
  );

  static TextStyle synergy_14_400_underlined = aquaTint80_14_400.copyWith(
    fontWeight: FontWeight.w400,
    color: AppColorsHelper.synergy,
    decoration: TextDecoration.underline,
  );

  static TextStyle dimGrey_14_400 = aquaTint80_14_400.copyWith(
    color: AppColorsHelper.dimGrey,
  );

  static TextStyle white_14_700 = aquaTint80_14_400.copyWith(
    color: AppColorsHelper.white,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.7,
  );
}

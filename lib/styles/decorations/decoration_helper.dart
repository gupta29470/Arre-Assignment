import 'package:arre_assignment/resources/resources.dart';
import 'package:arre_assignment/styles/app_color/app_colors_helper.dart';
import 'package:flutter/material.dart';

class DecorationHelper {
  static BoxDecoration get accountSettingsAppBarDecor => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColorsHelper.spinnaker.withOpacity(0.3),
          ),
        ),
        color: AppColorsHelper.freinachtBlack,
      );

  static BoxDecoration get customizeInterfaceDecor => BoxDecoration(
        color: AppColorsHelper.dimGrey,
        borderRadius: BorderRadius.circular(100),
      );

  static BoxDecoration get customizeInterfaceImageDecor => const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            Images.switchBody,
          ),
          fit: BoxFit.cover,
        ),
      );

  static BoxDecoration get highlightActionDecor => BoxDecoration(
        color: AppColorsHelper.freinachtBlack,
        borderRadius: BorderRadius.circular(
          12,
        ),
      );

  static BoxDecoration get voiceImageDecor => BoxDecoration(
        color: AppColorsHelper.synergy,
        borderRadius: BorderRadius.circular(40),
      );

  static BoxDecoration get editLanguagesBottomSheetDecor => const BoxDecoration(
        color: AppColorsHelper.coarseWool,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      );

  static BoxDecoration get editLanguagesBottomSheetDropDecor => BoxDecoration(
        color: AppColorsHelper.aquaTint,
        borderRadius: BorderRadius.circular(50),
      );

  static BoxDecoration get editLanguageDecor => BoxDecoration(
        borderRadius: BorderRadius.circular(
          8,
        ),
        color: AppColorsHelper.freinachtBlack,
        border: Border.all(
          color: AppColorsHelper.spinnaker.withOpacity(0.3),
        ),
      );

  static BoxDecoration get editLanguageDecorSelected => BoxDecoration(
        borderRadius: BorderRadius.circular(
          8,
        ),
        border: Border.all(
          color: AppColorsHelper.creoleSauce,
        ),
        color: AppColorsHelper.freinachtBlack,
      );

  static BoxDecoration get logoutButtonDecor => const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColorsHelper.synergy,
      );

  static BoxDecoration get highlightActionLeadingDecor => const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColorsHelper.synergy,
      );

  static BoxDecoration get languageSelectedCheckDecor => BoxDecoration(
        shape: BoxShape.circle,
        color: AppColorsHelper.coarseWool,
        border: Border.all(
          color: AppColorsHelper.creoleSauce,
          width: 2,
        ),
      );
}

import 'package:arre_assignment/account_settings/providers/language_provider.dart';
import 'package:arre_assignment/common/constants/language_constants.dart';
import 'package:arre_assignment/styles/app_color/app_colors_helper.dart';
import 'package:arre_assignment/styles/decorations/decoration_helper.dart';
import 'package:arre_assignment/styles/text_theme/text_theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LanguageWidget extends ConsumerWidget {
  final int index;
  final List<String> selectedLanguages;

  const LanguageWidget({
    super.key,
    required this.index,
    required this.selectedLanguages,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        onLanguageTap(ref);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 49,
            width: 92,
            decoration: isLanguageSelected
                ? DecorationHelper.editLanguageDecorSelected
                : DecorationHelper.editLanguageDecor,
            child: Center(
              child: isEnglishLanguage
                  ? Text(
                      LanguageConstants.languagesList[index][0],
                      style: isLanguageSelected
                          ? TextThemeHelper.englishSelectedLanguageTextStyle
                          : TextThemeHelper.englishLanguageTextStyle,
                      textAlign: TextAlign.center,
                    )
                  : Text(
                      "${LanguageConstants.languagesList[index][0]}\n${LanguageConstants.languagesList[index][1]}",
                      style: isLanguageSelected
                          ? TextThemeHelper.languageSelectedTextStyle
                          : TextThemeHelper.languageTextStyle,
                      textAlign: TextAlign.center,
                    ),
            ),
          ),
          if (isLanguageSelected) ...[
            Positioned(
              right: -4,
              top: -4,
              child: SizedBox(
                height: 16,
                width: 16,
                child: DecoratedBox(
                  decoration: DecorationHelper.languageSelectedCheckDecor,
                  child: const Icon(
                    Icons.check,
                    color: AppColorsHelper.creoleSauce,
                    size: 12,
                    weight: 10,
                  ),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

extension on LanguageWidget {
  void onLanguageTap(WidgetRef ref) {
    ref.read(selectedLanguagesProvider.notifier).toggleLanguages(
          LanguageConstants.languagesList[index][0],
        );
  }

  bool get isEnglishLanguage {
    return LanguageConstants.languagesList[index].contains("English");
  }

  bool get isLanguageSelected {
    return selectedLanguages.contains(
      LanguageConstants.languagesList[index][0],
    );
  }
}

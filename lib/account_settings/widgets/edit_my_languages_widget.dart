import 'package:arre_assignment/account_settings/providers/language_provider.dart';
import 'package:arre_assignment/account_settings/widgets/languages_list_widget.dart';
import 'package:arre_assignment/common/helpers/shared_preferences/preferences_helper.dart';
import 'package:arre_assignment/styles/button_theme/button_theme_helper.dart';
import 'package:arre_assignment/styles/decorations/decoration_helper.dart';
import 'package:arre_assignment/styles/text_theme/text_theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EditMyLanguagesWidget extends StatelessWidget {
  const EditMyLanguagesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(
        29,
        15,
        29,
        23,
      ),
      decoration: DecorationHelper.editLanguagesBottomSheetDecor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: SizedBox(
              height: 6,
              width: 30,
              child: DecoratedBox(
                decoration: DecorationHelper.editLanguagesBottomSheetDropDecor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              "Edit Language",
              style: TextThemeHelper.editLanguageTextStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Text(
              "Select the languages VoicePods to be in",
              style: TextThemeHelper.dimGrey_14_400,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 36),
            child: LanguagesListWidget(),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer(
                  builder: (context, ref, child) {
                    ref.watch(selectedLanguagesProvider);
                    return ElevatedButton(
                      onPressed: () {
                        PreferencesHelper.saveSelectedLanguages(
                          ref.read(selectedLanguagesProvider),
                        );
                        Navigator.pop(context);
                      },
                      style: ButtonThemeHelper.updateLanguageStyle,
                      child: Text(
                        "Update",
                        style: TextThemeHelper.white_14_700,
                      ),
                    );
                  },
                ),
                const SizedBox(width: 54),
                TextButton(
                  child: Text(
                    "Cancel",
                    style: TextThemeHelper.languageCancelTextStyle,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

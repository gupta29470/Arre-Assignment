import 'dart:convert';
import 'dart:developer';

import 'package:arre_assignment/common/constants/preferences_constants.dart';
import 'package:arre_assignment/common/helpers/shared_preferences/preferences_initializer.dart';

class PreferencesHelper {
  static void saveSelectedLanguages(List<String> languagesIndexes) async {
    try {
      String encoded = jsonEncode(languagesIndexes);

      PreferencesInitializer.setString(
        PreferencesConstants.selectedLanguages,
        encoded,
      );
    } catch (error) {
      log("PreferencesHelper ====== $error");
    }
  }

  static List<String>? get getSelectedLanguages {
    String? data = PreferencesInitializer.getString(
      PreferencesConstants.selectedLanguages,
    );

    try {
      List<String> languages = [];
      if (data != null && data.isNotEmpty) {
        List<dynamic> decoded = jsonDecode(data);

        for (String content in decoded) {
          languages.add(content);
        }

        return languages;
      }
    } catch (error) {
      log("PreferencesHelper ====== $error");
    }

    return null;
  }
}

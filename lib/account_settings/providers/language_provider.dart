import 'package:arre_assignment/common/helpers/shared_preferences/preferences_helper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectedLanguagesProvider =
    StateNotifierProvider.autoDispose<SelectedLanguagesNotifier, List<String>>(
        (ref) {
  return SelectedLanguagesNotifier();
});

class SelectedLanguagesNotifier extends StateNotifier<List<String>> {
  SelectedLanguagesNotifier()
      : super(
          PreferencesHelper.getSelectedLanguages != null &&
                  PreferencesHelper.getSelectedLanguages?.isNotEmpty == true
              ? (PreferencesHelper.getSelectedLanguages ?? [])
              : [],
        );

  void toggleLanguages(String language) {
    if (!state.contains(language)) {
      addLanguages(language);
    } else {
      removeLanguages(language);
    }
  }

  void addLanguages(String language) {
    state = [...state, language];
  }

  void removeLanguages(String language) {
    if (state.length != 1) {
      state = [...state.where((element) => element != language)];
    }
  }
}

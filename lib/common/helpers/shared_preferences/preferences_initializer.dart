import 'package:shared_preferences/shared_preferences.dart';

class PreferencesInitializer {
  static late SharedPreferences prefs;
  static bool isPrefsInitialized = false;

  static String? getString(String key) {
    if (isPrefsInitialized) {
      return prefs.getString(key);
    } else {
      return null;
    }
  }

  static Future<void> setString(String key, String value) async {
    if (isPrefsInitialized) {
      await prefs.setString(key, value);
    }
  }

  static initPreferences() async {
    prefs = await SharedPreferences.getInstance();
    isPrefsInitialized = true;
  }
}

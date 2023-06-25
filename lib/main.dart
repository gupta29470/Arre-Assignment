import 'package:arre_assignment/common/helpers/shared_preferences/preferences_initializer.dart';
import 'package:flutter/material.dart';

import 'package:arre_assignment/account_settings/screens/account_settings_screen.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (!PreferencesInitializer.isPrefsInitialized) {
    PreferencesInitializer.initPreferences();
  }
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(
      const MyApp(),
    );
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const ProviderScope(
      child: MaterialApp(
        title: 'Arre Account Settings',
        home: AccountSettingsScreen(),
      ),
    );
  }
}

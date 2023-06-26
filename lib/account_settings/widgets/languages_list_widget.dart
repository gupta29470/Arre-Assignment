import 'package:arre_assignment/account_settings/providers/language_provider.dart';
import 'package:arre_assignment/account_settings/widgets/language_widget.dart';
import 'package:arre_assignment/common/constants/language_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LanguagesListWidget extends ConsumerWidget {
  const LanguagesListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<String> selectedLanguages = ref.watch(selectedLanguagesProvider);

    return Wrap(
      spacing: 20,
      runSpacing: 30,
      children: List.generate(
        LanguageConstants.languagesList.length,
        (index) {
          return LanguageWidget(
            index: index,
            selectedLanguages: selectedLanguages,
          );
        },
      ),
    );
  }
}

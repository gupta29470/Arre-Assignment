import 'package:arre_assignment/account_settings/widgets/action_widget.dart';
import 'package:arre_assignment/account_settings/widgets/edit_my_languages_widget.dart';
import 'package:arre_assignment/account_settings/widgets/highlight_action_widget.dart';
import 'package:arre_assignment/resources/resources.dart';
import 'package:arre_assignment/styles/decorations/decoration_helper.dart';
import 'package:arre_assignment/styles/text_theme/text_theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:arre_assignment/styles/app_color/app_colors_helper.dart';

class AccountSettingsScreen extends StatelessWidget {
  const AccountSettingsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(
              16,
              96,
              16,
              24,
            ),
            margin: const EdgeInsets.all(0),
            color: AppColorsHelper.freinachtBlack,
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: AppColorsHelper.aquaTint,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "My Account",
                    style: TextThemeHelper.aquaTint_14_700,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 4,
            width: double.infinity,
            child: DecoratedBox(
              decoration: DecorationHelper.appBarDividerDecor,
            ),
          ),
          Expanded(
            child: Container(
              color: AppColorsHelper.coarseWool,
              padding: const EdgeInsets.fromLTRB(
                16,
                12,
                16,
                16,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 16,
                    ),
                    child: HighlightActionWidget(
                      image: Images.shieldAlert,
                      title: "Community",
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 16,
                    ),
                    child: HighlightActionWidget(
                      image: Images.help,
                      title: "Help Centre",
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 16,
                    ),
                    child: HighlightActionWidget(
                      image: Images.editLang,
                      title: "Edit My Languages",
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          backgroundColor: Colors.transparent,
                          builder: (_) {
                            return const EditMyLanguagesWidget();
                          },
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(
                      8,
                      8,
                      8,
                      8,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Customize Interface",
                          style: TextThemeHelper.aquaTint_14_400,
                        ),
                        Container(
                          height: 28,
                          width: 52,
                          padding: const EdgeInsets.all(0.4),
                          decoration: DecorationHelper.customizeInterfaceDecor,
                          child: Container(
                            padding: const EdgeInsets.all(2),
                            decoration:
                                DecorationHelper.customizeInterfaceImageDecor,
                            child: const Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(width: 1.2),
                                CircleAvatar(
                                  radius: 12,
                                  backgroundColor: AppColorsHelper.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 24),
                          child: ActionWidget(
                            title: "Terms of Service",
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 24),
                          child: ActionWidget(
                            title: "Privacy Policies",
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 24),
                          child: ActionWidget(
                            title: "Temporarily Deactivate My Account",
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 24),
                          child: ActionWidget(
                            title: "Permanently Delete My Account",
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: DecorationHelper.highlightActionDecor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: CircleAvatar(
                                backgroundColor: AppColorsHelper.synergy,
                                radius: 10,
                                child: Image.asset(
                                  Images.logout,
                                  height: 12,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text(
                              "Logout",
                              style: TextThemeHelper.synergy_14_700,
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 12,
                          color: AppColorsHelper.aquaTint,
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: Image.asset(
                          Images.arre,
                          height: 32,
                          width: 88,
                        ),
                      ),
                      Container(
                        decoration: DecorationHelper.voiceImageDecor,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 4,
                          vertical: 2,
                        ),
                        margin: const EdgeInsets.only(bottom: 16),
                        child: Image.asset(
                          Images.voice,
                          height: 28,
                          width: 108,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Text(
                          "Version 12.1.1",
                          style: TextThemeHelper.synergy_14_400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

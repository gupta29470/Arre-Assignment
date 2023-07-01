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
      backgroundColor: AppColorsHelper.freinachtBlack,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(
                20,
                48,
                16,
                22,
              ),
              margin: const EdgeInsets.all(0),
              decoration: DecorationHelper.accountSettingsAppBarDecor,
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 12),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: AppColorsHelper.aquaTint,
                    ),
                  ),
                  Text(
                    "My Account",
                    style: TextThemeHelper.accountAppBarTitleStyle,
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: AppColorsHelper.coarseWool,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 9,
                ),
                child: Column(
                  children: [
                    HighlightActionWidget(
                      image: Images.shieldAlert,
                      title: "Community Code of Conduct",
                      onTap: () {},
                    ),
                    HighlightActionWidget(
                      image: Images.help,
                      title: "Help Centre",
                      onTap: () {},
                    ),
                    HighlightActionWidget(
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
                    Padding(
                      padding: const EdgeInsets.fromLTRB(
                        5,
                        15,
                        5,
                        18,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Customize Interface",
                            style: TextThemeHelper.aquaTint80_14_400,
                          ),
                          Container(
                            height: 28,
                            width: 52,
                            padding: const EdgeInsets.all(0.4),
                            decoration:
                                DecorationHelper.customizeInterfaceDecor,
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
                        horizontal: 5,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ActionWidget(
                            title: "Terms of Service",
                          ),
                          ActionWidget(
                            title: "Privacy Policies",
                          ),
                          ActionWidget(
                            title: "Temporarily Deactivate My Account",
                          ),
                          ActionWidget(
                            title: "Permanently Delete My Account",
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
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  padding: const EdgeInsets.all(5),
                                  decoration:
                                      DecorationHelper.logoutButtonDecor,
                                  child: Image.asset(
                                    Images.logout,
                                    height: 11,
                                    width: 11,
                                  ),
                                ),
                              ),
                              Text(
                                "Logout",
                                style: TextThemeHelper.logoutTextStyle,
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 12,
                            color: AppColorsHelper.aquaTint_80,
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
                          padding: const EdgeInsets.only(bottom: 24),
                          child: Text(
                            "Version 12.1.1",
                            style: TextThemeHelper.synergy_14_400_underlined,
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
      ),
    );
  }
}

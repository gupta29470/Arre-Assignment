import 'package:arre_assignment/styles/app_color/app_colors_helper.dart';
import 'package:arre_assignment/styles/text_theme/text_theme_helper.dart';
import 'package:flutter/material.dart';

class ActionWidget extends StatelessWidget {
  final String title;

  const ActionWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextThemeHelper.aquaTint_14_400,
        ),
        const Icon(
          Icons.arrow_forward_ios,
          size: 10,
          color: AppColorsHelper.aquaTint,
        ),
      ],
    );
  }
}

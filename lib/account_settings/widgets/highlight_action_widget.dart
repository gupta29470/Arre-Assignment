import 'package:arre_assignment/styles/app_color/app_colors_helper.dart';
import 'package:arre_assignment/styles/decorations/decoration_helper.dart';
import 'package:arre_assignment/styles/text_theme/text_theme_helper.dart';
import 'package:flutter/material.dart';

class HighlightActionWidget extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback onTap;

  const HighlightActionWidget({
    super.key,
    required this.image,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: AppColorsHelper.coarseWool,
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: DecorationHelper.highlightActionDecor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: CircleAvatar(
                    backgroundColor: AppColorsHelper.synergy,
                    radius: 10,
                    child: Image.asset(
                      image,
                      height: 12,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  title,
                  style: TextThemeHelper.aquaTint_14_700,
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
    );
  }
}

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
        padding: const EdgeInsets.fromLTRB(
          13,
          12,
          13,
          13,
        ),
        margin: const EdgeInsets.only(
          bottom: 16,
        ),
        decoration: DecorationHelper.highlightActionDecor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: DecorationHelper.highlightActionLeadingDecor,
                    child: Center(
                      child: Image.asset(
                        image,
                        height: 11,
                        width: 11,
                      ),
                    ),
                  ),
                ),
                Text(
                  title,
                  style: TextThemeHelper.highlightActionTextStyle,
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
    );
  }
}

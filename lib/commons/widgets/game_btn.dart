import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:truth_dare_game/commons/widgets/game_outlined_text.dart';
import 'package:truth_dare_game/core/helper/haptic_helper.dart';

class GameBtn extends StatelessWidget {
  final String btnTitle;
  final double btnFontSize;
  final VoidCallback onTap;
  final Color btnTitleStrokeColor;
  final Color btnTitleFillColor;
  final String btnPath;
  final double height;
  final double width;
  final String fontFamily;

  const GameBtn({
    super.key,
    required this.btnTitle,
    required this.onTap,
    required this.btnFontSize,
    required this.btnTitleStrokeColor,
    required this.btnTitleFillColor,
    required this.btnPath,
    required this.fontFamily,
    this.height = 55,
    this.width = 252,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        HapticHelper.vibrate();
        onTap();
      },
      borderRadius: BorderRadius.circular(12),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: SizedBox(
        height: height,
        width: width,
        child: Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset(
              btnPath,
              height: height,
              width: width,
              fit: BoxFit.contain,
            ),
            GameOutlinedText(
              hasStroke: false,
              text: btnTitle,
              fontSize: btnFontSize,
              strokeColor: btnTitleStrokeColor,
              fillColor: btnTitleFillColor,
              fontFamily: fontFamily,
            ),
          ],
        ),
      ),
    );
  }
}

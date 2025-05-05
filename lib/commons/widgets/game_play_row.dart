import 'package:flutter/material.dart';
import 'package:truth_dare_game/commons/commons_exports.dart';
import 'package:truth_dare_game/generators/colors.gen.dart';
import 'package:truth_dare_game/generators/fonts.gen.dart';

class GamePlayRow extends StatelessWidget {
  final VoidCallback circularIconOnTap;
  final String circularIconPath;
  final String circularBtnBgPath;
  final VoidCallback btnOnTap;
  final String btnTitle;
  final String mainBtnBgPath;
  final bool isCircularBtnAtEnd;
  final double? mainBtnHeight; // NEW (optional)
  final double? mainBtnWidth;  // NEW (optional)

  const GamePlayRow({
    super.key,
    required this.circularIconOnTap,
    required this.circularIconPath,
    required this.circularBtnBgPath,
    required this.btnOnTap,
    required this.btnTitle,
    required this.mainBtnBgPath,
    this.isCircularBtnAtEnd = false,
    this.mainBtnHeight, // optional
    this.mainBtnWidth,  // optional
  });

  @override
  Widget build(BuildContext context) {
    final circularButton = GameCircularBtn(
      size: 68,
      onTap: circularIconOnTap,
      bgPath: circularBtnBgPath,
      iconPath: circularIconPath,
      iconHeight: 32,
      iconWidth: 26,
    );

    final mainButton = GameBtn(
      height: mainBtnHeight ?? 73,   // use provided or fallback
      width: mainBtnWidth ?? 212,    // use provided or fallback
      btnTitle: btnTitle,
      onTap: btnOnTap,
      btnFontSize: 24,
      btnTitleStrokeColor: ColorName.primary,
      btnTitleFillColor: ColorName.white,
      btnPath: mainBtnBgPath,
      fontFamily: FontFamily.balooThambi,
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: isCircularBtnAtEnd
          ? [mainButton, GameHorizontalSpacer(width: 14), circularButton]
          : [circularButton, GameHorizontalSpacer(width: 14), mainButton],
    );
  }
}

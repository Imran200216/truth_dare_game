import 'package:flutter/material.dart';
import 'package:truth_dare_game/commons/commons_exports.dart';
import 'package:truth_dare_game/generators/assets.gen.dart';
import 'package:truth_dare_game/generators/colors.gen.dart';
import 'package:truth_dare_game/generators/fonts.gen.dart';

class GamePlayRow extends StatelessWidget {
  final VoidCallback circularIconOnTap;
  final String circularIconPath;
  final VoidCallback btnOnTap;
  final String btnTitle;

  const GamePlayRow({
    super.key,
    required this.circularIconOnTap,
    required this.btnOnTap,
    required this.btnTitle,
    required this.circularIconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Circular play button
        GameCircularBtn(
          size: 68,
          onTap: circularIconOnTap,
          bgPath: Assets.images.svg.gameCircularBtn,
          iconPath: circularIconPath,
          iconHeight: 32,
          iconWidth: 26,
        ),

        GameHorizontalSpacer(width: 14),

        // Main play button
        GameBtn(
          height: 73,
          width: 212,
          btnTitle: btnTitle,
          onTap: btnOnTap,
          btnFontSize: 24,
          btnTitleStrokeColor: ColorName.primary,
          btnTitleFillColor: ColorName.white,
          btnPath: Assets.images.svg.gameFilledBtn,
          fontFamily: FontFamily.balooThambi,
        ),
      ],
    );
  }
}

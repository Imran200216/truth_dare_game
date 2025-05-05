import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:truth_dare_game/commons/commons_exports.dart';
import 'package:truth_dare_game/generators/assets.gen.dart';
import 'package:truth_dare_game/generators/colors.gen.dart';
import 'package:truth_dare_game/generators/fonts.gen.dart';

class GameIntroView extends StatelessWidget {
  const GameIntroView({super.key});

  @override
  Widget build(BuildContext context) {
    return GameScaffold(
      backgroundImagePath: Assets.images.png.playIntro.path,
      child: Align(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // App name
            GameOutlinedText(
              text: "Truth Dare Game",
              fontSize: 34,
              strokeColor: ColorName.primary,
              fillColor: ColorName.white,
              fontFamily: FontFamily.balooThambi,
            ),

            GameVerticalSpacer(height: 10),

            // App Logo
            GameAppLogo(height: 306, width: 306),

            GameVerticalSpacer(height: 46),

            // Let's play
            GamePlayRow(
              circularIconOnTap: () {},
              btnOnTap: () {
                //
                GoRouter.of(context).pushNamed('userAge');
              },
              btnTitle: "Let's Play",
              mainBtnBgPath: Assets.images.svg.gameFilledBtn,
              circularBtnBgPath: Assets.images.svg.gameCircularBtn,
              circularIconPath: Assets.images.svg.play,
            ),

            GameVerticalSpacer(height: 12),

            // Settings
            GamePlayRow(
              circularIconOnTap: () {},
              btnOnTap: () {},
              btnTitle: "Settings",
              mainBtnBgPath: Assets.images.svg.gameFilledBtn,
              circularBtnBgPath: Assets.images.svg.gameCircularBtn,
              circularIconPath: Assets.images.svg.settings,
            ),

            GameVerticalSpacer(height: 12),

            // Rate Us
            GamePlayRow(
              circularIconOnTap: () {},
              btnOnTap: () {},
              btnTitle: "Rate Us",
              mainBtnBgPath: Assets.images.svg.gameFilledBtn,
              circularBtnBgPath: Assets.images.svg.gameCircularBtn,
              circularIconPath: Assets.images.svg.star,
            ),
          ],
        ),
      ),
    );
  }
}

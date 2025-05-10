import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:truth_dare_game/commons/commons_exports.dart';
import 'package:truth_dare_game/generators/assets.gen.dart';
import 'package:truth_dare_game/generators/colors.gen.dart';
import 'package:truth_dare_game/generators/fonts.gen.dart';
import 'package:truth_dare_game/core/core_exports.dart';

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
              text: AppConstants.appNameText,
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
                // user age view
                GoRouter.of(context).pushNamed(RouteConstants.userAgeView);
              },
              btnTitle: AppConstants.letsPlayText,
              mainBtnBgPath: Assets.images.svg.gameFilledBtn,
              circularBtnBgPath: Assets.images.svg.gameCircularBtn,
              circularIconPath: Assets.images.svg.play,
            ),

            GameVerticalSpacer(height: 12),

            // Settings
            GamePlayRow(
              circularIconOnTap: () {},
              btnOnTap: () {},
              btnTitle: AppConstants.settingsText,
              mainBtnBgPath: Assets.images.svg.gameFilledBtn,
              circularBtnBgPath: Assets.images.svg.gameCircularBtn,
              circularIconPath: Assets.images.svg.settings,
            ),

            GameVerticalSpacer(height: 12),

            // Rate Us
            GamePlayRow(
              circularIconOnTap: () {},
              btnOnTap: () {},
              btnTitle: AppConstants.rateUsText,
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

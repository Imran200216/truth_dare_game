import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:truth_dare_game/commons/commons_exports.dart';
import 'package:truth_dare_game/generators/assets.gen.dart';
import 'package:truth_dare_game/generators/colors.gen.dart';
import 'package:truth_dare_game/generators/fonts.gen.dart';

class UserAgeView extends StatelessWidget {
  const UserAgeView({super.key});

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
            GameAppLogo(height: 286, width: 286),

            GameVerticalSpacer(height: 46),

            // Let's play
            GamePlayRow(
              circularIconOnTap: () {},
              btnOnTap: () {
                // Add Truth Or Dare View
                GoRouter.of(context).pushNamed('addTruthDare');
              },
              btnTitle: "kids",
              circularIconPath: Assets.images.svg.kids,
            ),

            GameVerticalSpacer(height: 12),

            // Settings
            GamePlayRow(
              circularIconOnTap: () {},
              btnOnTap: () {},
              btnTitle: "Teens",
              circularIconPath: Assets.images.svg.teens,
            ),

            GameVerticalSpacer(height: 12),

            // Rate Us
            GamePlayRow(
              circularIconOnTap: () {},
              btnOnTap: () {},
              btnTitle: "Adults",
              circularIconPath: Assets.images.svg.adults,
            ),

            GameVerticalSpacer(height: 22),

            GameCircularBtn(
              onTap: () {
                GoRouter.of(context).pop();
              },
              bgPath: Assets.images.svg.gameCircularBtn,
              iconPath: Assets.images.svg.back,
              size: 76,
              iconHeight: 40,
              iconWidth: 34,
            ),
          ],
        ),
      ),
    );
  }
}

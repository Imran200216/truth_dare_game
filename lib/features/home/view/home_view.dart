import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:truth_dare_game/commons/commons_exports.dart';
import 'package:truth_dare_game/generators/assets.gen.dart';
import 'package:truth_dare_game/generators/colors.gen.dart';
import 'package:truth_dare_game/generators/fonts.gen.dart';
import 'package:truth_dare_game/core/core_exports.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return GameScaffold(
      backgroundImagePath: Assets.images.png.playIntro.path,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: Column(
            children: [
              // App name
              GameOutlinedText(
                text: AppConstants.appNameText,
                fontSize: 32,
                strokeColor: ColorName.primary,
                fillColor: ColorName.white,
                fontFamily: FontFamily.balooThambi,
              ),

              // Game spinner
              const Spacer(),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // music off and on
                  GameCircularBtn(
                    onTap: () {},
                    bgPath: Assets.images.svg.gameCircularBtn,
                    iconPath: Assets.images.svg.musicOn,
                    size: 76,
                    iconHeight: 40,
                    iconWidth: 34,
                  ),

                  // game points
                  GameCircularBtn(
                    onTap: () {},
                    bgPath: Assets.images.svg.gameCircularBtn,
                    iconPath: Assets.images.svg.gamePoints,
                    size: 76,
                    iconHeight: 40,
                    iconWidth: 34,
                  ),

                  // game bottle collection
                  GameCircularBtn(
                    onTap: () {
                      // game collections view
                      GoRouter.of(
                        context,
                      ).pushNamed(RouteConstants.gameCollectionsView);
                    },
                    bgPath: Assets.images.svg.gameCircularBtn,
                    iconPath: Assets.images.svg.bottle,
                    size: 76,
                    iconHeight: 40,
                    iconWidth: 34,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

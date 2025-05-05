import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:truth_dare_game/commons/commons_exports.dart';
import 'package:truth_dare_game/generators/assets.gen.dart';
import 'package:truth_dare_game/generators/colors.gen.dart';
import 'package:truth_dare_game/generators/fonts.gen.dart';

class AddTruthDareView extends StatelessWidget {
  const AddTruthDareView({super.key});

  @override
  Widget build(BuildContext context) {
    return GameScaffold(
      backgroundImagePath: Assets.images.png.playIntro.path,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 50),
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

              GameVerticalSpacer(height: 40),

              // Add Truth Dare
              GamePlayRow(
                circularIconOnTap: () {},
                btnOnTap: () {
                  // add player view
                  GoRouter.of(context).pushNamed('addPlayers');
                },
                btnTitle: "Add Truth",
                circularBtnBgPath: Assets.images.svg.gameCircularBtn,
                mainBtnBgPath: Assets.images.svg.gameFilledBtn,
                circularIconPath: Assets.images.svg.add,
              ),

              GameVerticalSpacer(height: 12),

              // Settings
              GamePlayRow(
                circularIconOnTap: () {},
                btnOnTap: () {},
                btnTitle: "Add Dare",
                circularBtnBgPath: Assets.images.svg.gameCircularBtn,
                mainBtnBgPath: Assets.images.svg.gameFilledBtn,
                circularIconPath: Assets.images.svg.add,
              ),

              GameVerticalSpacer(height: 12),

              // Rate Us
              GamePlayRow(
                circularIconOnTap: () {},
                btnOnTap: () {},
                btnTitle: "Sound On",
                circularBtnBgPath: Assets.images.svg.gameCircularBtn,
                mainBtnBgPath: Assets.images.svg.gameFilledBtn,
                circularIconPath: Assets.images.svg.music,
              ),

              GameVerticalSpacer(height: 12),

              // Rate Us
              GamePlayRow(
                circularIconOnTap: () {},
                btnOnTap: () {},
                btnTitle: "Share",
                circularBtnBgPath: Assets.images.svg.gameCircularBtn,
                mainBtnBgPath: Assets.images.svg.gameFilledBtn,
                circularIconPath: Assets.images.svg.share,
              ),

              const Spacer(),

              // back btn
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
      ),
    );
  }
}

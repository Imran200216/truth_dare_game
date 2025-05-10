import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:truth_dare_game/commons/commons_exports.dart';
import 'package:truth_dare_game/generators/assets.gen.dart';
import 'package:truth_dare_game/generators/colors.gen.dart';
import 'package:truth_dare_game/generators/fonts.gen.dart';
import 'package:truth_dare_game/core/core_exports.dart';

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
                text: AppConstants.appNameText,
                fontSize: 34,
                strokeColor: ColorName.primary,
                fillColor: ColorName.white,
                fontFamily: FontFamily.balooThambi,
              ),

              GameVerticalSpacer(height: 40),

              // Add Truth 
              GamePlayRow(
                circularIconOnTap: () {},
                btnOnTap: () {
                  // add player view
                  GoRouter.of(context).pushNamed(RouteConstants.addPlayerView);
                },
                btnTitle: AppConstants.addTruthText,
                circularBtnBgPath: Assets.images.svg.gameCircularBtn,
                mainBtnBgPath: Assets.images.svg.gameFilledBtn,
                circularIconPath: Assets.images.svg.add,
              ),

              GameVerticalSpacer(height: 12),

              // Add Dare
              GamePlayRow(
                circularIconOnTap: () {},
                btnOnTap: () {},
                btnTitle: AppConstants.addDareText,
                circularBtnBgPath: Assets.images.svg.gameCircularBtn,
                mainBtnBgPath: Assets.images.svg.gameFilledBtn,
                circularIconPath: Assets.images.svg.add,
              ),

              GameVerticalSpacer(height: 12),

              // Sound on 
              GamePlayRow(
                circularIconOnTap: () {},
                btnOnTap: () {},
                btnTitle: AppConstants.soundOnText,
                circularBtnBgPath: Assets.images.svg.gameCircularBtn,
                mainBtnBgPath: Assets.images.svg.gameFilledBtn,
                circularIconPath: Assets.images.svg.music,
              ),

              GameVerticalSpacer(height: 12),

              // Rate Us
              GamePlayRow(
                circularIconOnTap: () {},
                btnOnTap: () {},
                btnTitle: AppConstants.shareText,
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

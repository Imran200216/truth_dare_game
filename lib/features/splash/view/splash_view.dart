import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:truth_dare_game/commons/commons_exports.dart';
import 'package:truth_dare_game/generators/assets.gen.dart';
import 'package:truth_dare_game/generators/colors.gen.dart';
import 'package:truth_dare_game/generators/fonts.gen.dart';
import 'package:truth_dare_game/core/core_exports.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();

    // Start a 3-second timer
    Timer(const Duration(seconds: 3), () {
      // Navigate to GameIntroView
      GoRouter.of(context).pushReplacementNamed(RouteConstants.gameIntroView);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GameScaffold(
      backgroundImagePath: Assets.images.png.splash.path,
      child: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // App logo
            Image.asset(
              Assets.images.png.logo.path,
              height: 108,
              width: 108,
              fit: BoxFit.contain,
            ),

            const SizedBox(height: 16),

            // App name
            GameOutlinedText(
              text: AppConstants.appNameText,
              fontSize: 32,
              strokeColor: ColorName.primary,
              fillColor: ColorName.white,
              fontFamily: FontFamily.balooThambi,
            ),

            const SizedBox(height: 8),

            // App edition
            GameOutlinedText(
              text: AppConstants.appEditionText,
              fontSize: 25,
              strokeColor: ColorName.secondary,
              fillColor: ColorName.white,
              fontFamily: FontFamily.balooThambi,
            ),
          ],
        ),
      ),
    );
  }
}

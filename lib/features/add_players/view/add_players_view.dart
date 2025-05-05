import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:truth_dare_game/generators/assets.gen.dart';
import 'package:truth_dare_game/generators/colors.gen.dart';
import 'package:truth_dare_game/generators/fonts.gen.dart';
import 'package:truth_dare_game/features/add_players/add_players_exports.dart';
import 'package:truth_dare_game/core/core_exports.dart';
import 'package:truth_dare_game/commons/commons_exports.dart';

class AddPlayersView extends StatefulWidget {
  const AddPlayersView({super.key});

  @override
  State<AddPlayersView> createState() => _AddPlayersViewState();
}

class _AddPlayersViewState extends State<AddPlayersView> {
  // controllers
  final TextEditingController playerNameController = TextEditingController();

  // form key
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    playerNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GameScaffold(
      backgroundImagePath: Assets.images.png.splash.path,
      child: Align(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Add Player Text
              GameOutlinedText(
                text: "Truth Dare Game",
                fontSize: 34,
                strokeColor: ColorName.primary,
                fillColor: ColorName.white,
                fontFamily: FontFamily.balooThambi,
              ),

              GameVerticalSpacer(height: 20),

              // add person text field
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 14,
                children: [
                  // Add person game text field
                  GameTextField(
                    controller: playerNameController,
                    validator: AppValidator.validateName,
                    hintText: '',
                    cursorColor: ColorName.primary,
                    textColor: ColorName.secondary,
                    fontFamily: FontFamily.balooThambi,
                    backgroundSvgPath: Assets.images.svg.addPersonTextField,
                  ),

                  // Add circular btn
                  GameCircularBtn(
                    onTap: () {},
                    bgPath: Assets.images.svg.gameCircularBtn,
                    iconPath: Assets.images.svg.add,
                    iconHeight: 30,
                    iconWidth: 30,
                  ),
                ],
              ),

              GameVerticalSpacer(height: 20),

              // Add Players
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 10,
                children: [
                  // Player 1
                  GamePlayRow(
                    circularIconOnTap: () {},
                    btnOnTap: () {},
                    btnTitle: "Badri",
                    mainBtnBgPath: Assets.images.svg.addPlayerBtn,
                    mainBtnHeight: 68,
                    mainBtnWidth: 302,
                    circularBtnBgPath: Assets.images.svg.gameDeleteCircularBtn,
                    circularIconPath: Assets.images.svg.delete,
                    isCircularBtnAtEnd: true,
                  ),

                  // Player 2
                  GamePlayRow(
                    circularIconOnTap: () {},
                    btnOnTap: () {},
                    btnTitle: "Imran",
                    mainBtnBgPath: Assets.images.svg.addPlayerBtn,
                    mainBtnHeight: 68,
                    mainBtnWidth: 302,
                    circularBtnBgPath: Assets.images.svg.gameDeleteCircularBtn,
                    circularIconPath: Assets.images.svg.delete,
                    isCircularBtnAtEnd: true,
                  ),

                  // Player 2
                  GamePlayRow(
                    circularIconOnTap: () {},
                    btnOnTap: () {},
                    btnTitle: "Sanjev",
                    mainBtnBgPath: Assets.images.svg.addPlayerBtn,
                    mainBtnHeight: 68,
                    mainBtnWidth: 302,
                    circularBtnBgPath: Assets.images.svg.gameDeleteCircularBtn,
                    circularIconPath: Assets.images.svg.delete,
                    isCircularBtnAtEnd: true,
                  ),
                ],
              ),

              const Spacer(),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Back btn
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

                  // Play btn
                  GameCircularBtn(
                    onTap: () {
                      GoRouter.of(context).pushReplacementNamed("home");
                    },
                    bgPath: Assets.images.svg.gameCircularBtn,
                    iconPath: Assets.images.svg.play,
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

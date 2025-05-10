import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/hive.dart';
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
  // controller
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
          margin: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // App Title
              GameOutlinedText(
                text: AppConstants.appNameText,
                fontSize: 34,
                strokeColor: ColorName.primary,
                fillColor: ColorName.white,
                fontFamily: FontFamily.balooThambi,
              ),

              GameVerticalSpacer(height: 20),

              // Text field + add button
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Name field
                  GameTextField(
                    controller: playerNameController,
                    validator: AppValidator.validateName,
                    hintText: '',
                    cursorColor: ColorName.primary,
                    textColor: ColorName.secondary,
                    fontFamily: FontFamily.balooThambi,
                    backgroundSvgPath: Assets.images.svg.addPersonTextField,
                  ),

                  const SizedBox(width: 14),

                  // Add player button
                  GameCircularBtn(
                    onTap: () async {
                      final name = playerNameController.text.trim();
                      if (name.isEmpty) return;

                      final box = await Hive.openBox(AppConstants.hiveDb);

                      List<String> currentPlayers = box
                          .get('gamePlayers', defaultValue: [])
                          .cast<String>();

                      if (!currentPlayers.contains(name) &&
                          currentPlayers.length < 4) {
                        currentPlayers.add(name);
                        await box.put('gamePlayers', currentPlayers);
                        playerNameController.clear();
                        setState(() {});
                      }
                    },
                    bgPath: Assets.images.svg.gameCircularBtn,
                    iconPath: Assets.images.svg.add,
                    iconHeight: 30,
                    iconWidth: 30,
                  ),
                ],
              ),

              GameVerticalSpacer(height: 20),

              // Player List
              FutureBuilder(
                future: Hive.openBox(AppConstants.hiveDb),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  }

                  final box = snapshot.data as Box;
                  List<String> players = box
                      .get('gamePlayers', defaultValue: [])
                      .cast<String>();

                  if (players.isEmpty) {
                    return const SizedBox.shrink();
                  }

                  return Column(
                    spacing: 12,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...players.map(
                        (player) => GamePlayRow(
                          circularIconOnTap: () async {
                            players.remove(player);
                            await box.put('gamePlayers', players);
                            setState(() {});
                          },
                          btnOnTap: () {},
                          btnTitle: player,
                          mainBtnBgPath: Assets.images.svg.addPlayerBtn,
                          mainBtnHeight: 68,
                          mainBtnWidth: 302,
                          circularBtnBgPath:
                              Assets.images.svg.gameDeleteCircularBtn,
                          circularIconPath: Assets.images.svg.delete,
                          isCircularBtnAtEnd: true,
                        ),
                      ),
                    ],
                  );
                },
              ),

              const Spacer(),

              // Navigation buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
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
                  GameCircularBtn(
                    onTap: () {
                      // home view
                      GoRouter.of(
                        context,
                      ).pushReplacementNamed(RouteConstants.homeView);
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

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:truth_dare_game/generators/assets.gen.dart';
import 'package:truth_dare_game/generators/colors.gen.dart';
import 'package:truth_dare_game/generators/fonts.gen.dart';
import 'package:truth_dare_game/features/add_players/add_players_exports.dart';
import 'package:truth_dare_game/core/core_exports.dart';
import 'package:truth_dare_game/commons/commons_exports.dart';

class AddPlayersView extends StatelessWidget {
  const AddPlayersView({super.key});

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
                    controller: TextEditingController(),
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
                    onTap: () {
                      final name = "playerName"; // Get player name here
                      if (name.isEmpty) return;

                      BlocProvider.of<PlayersBloc>(context)
                          .add(AddPlayer(name));
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
              BlocBuilder<PlayersBloc, PlayersState>(
                builder: (context, state) {
                  if (state is PlayersLoading) {
                    return const CircularProgressIndicator();
                  }
                  if (state is PlayersLoaded) {
                    final players = state.players;
                    if (players.isEmpty) {
                      return const SizedBox.shrink();
                    }

                    return Column(
                      spacing: 12,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ...players.map(
                          (player) => GamePlayRow(
                            circularIconOnTap: () {
                              BlocProvider.of<PlayersBloc>(context)
                                  .add(RemovePlayer(player));
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
                  }
                  return const SizedBox.shrink();
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
                      // Back button action
                    },
                    bgPath: Assets.images.svg.gameCircularBtn,
                    iconPath: Assets.images.svg.back,
                    size: 76,
                    iconHeight: 40,
                    iconWidth: 34,
                  ),
                  GameCircularBtn(
                    onTap: () {
                      // Play button action
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

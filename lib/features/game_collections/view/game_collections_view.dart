import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:truth_dare_game/commons/commons_exports.dart';
import 'package:truth_dare_game/features/game_collections/game_collections_exports.dart';
import 'package:truth_dare_game/generators/assets.gen.dart';
import 'package:truth_dare_game/core/core_exports.dart';

class GameCollectionsView extends StatelessWidget {
  const GameCollectionsView({super.key});

  @override
  Widget build(BuildContext context) {
    // bottle collection assets
    final List<String> bottleAssets = [
      Assets.images.svg.bottleOne,
      Assets.images.svg.bottleTwo,
      Assets.images.svg.bottleThree,
      Assets.images.svg.bottleFour,
      Assets.images.svg.bottleFive,
      Assets.images.svg.bottleSix,
      Assets.images.svg.bottleSeven,
      Assets.images.svg.bottleEight,
      Assets.images.svg.bottleNine,
      Assets.images.svg.bottleTen,
      Assets.images.svg.bottleEleven,
      Assets.images.svg.bottleThirteen,
      Assets.images.svg.bottleFourteen,
    ];

    return GameScaffold(
      showAppBar: true,
      leadingSvgAsset: Assets.images.svg.back,
      appBarTitle: AppConstants.appNameText,
      onLeadingIconPressed: () {
        // back navigation
        GoRouter.of(context).pop();
      },
      backgroundImagePath: Assets.images.png.playIntro.path,
      child: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: GridView.builder(
            padding: const EdgeInsets.all(16),
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: bottleAssets.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 30,
              crossAxisSpacing: 5,
              childAspectRatio: 0.9,
            ),
            itemBuilder: (context, index) {
              return GameCollectionCard(
                bottleAssetPath: bottleAssets[index],
                onTap: () {},
              );
            },
          ),
        ),
      ),
    );
  }
}

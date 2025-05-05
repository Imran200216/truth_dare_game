import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:truth_dare_game/generators/assets.gen.dart';

class GameCollectionCard extends StatelessWidget {
  final String bottleAssetPath;
  final VoidCallback onTap;

  const GameCollectionCard({
    super.key,
    required this.bottleAssetPath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 180,
        width: 180,
        child: Stack(
          alignment: Alignment.center,
          children: [
            // common background
            Positioned.fill(
              child: SvgPicture.asset(
                Assets.images.svg.gameCollectionCardBg,
                fit: BoxFit.contain,
              ),
            ),
            // bottle image on top
            SvgPicture.asset(
              bottleAssetPath,
              height: 130,
              width: 130,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}

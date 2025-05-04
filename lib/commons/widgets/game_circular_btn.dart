import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:truth_dare_game/commons/commons_exports.dart';

class GameCircularBtn extends StatelessWidget {
  final VoidCallback onTap;
  final String bgPath;
  final String iconPath;
  final double size;
  final double iconHeight;
  final double iconWidth;

  const GameCircularBtn({
    super.key,
    required this.onTap,
    required this.bgPath,
    required this.iconPath,
    this.size = 55,
    required this.iconHeight,
    required this.iconWidth,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => GameBtnProvider(),
      child: Consumer<GameBtnProvider>(
        builder: (context, btnProvider, _) {
          return GestureDetector(
            onTapDown: (_) => btnProvider.onTapDown(),
            onTapUp: (_) => btnProvider.onTapUp(onTap),
            onTapCancel: () => btnProvider.onTapCancel(),
            child: AnimatedScale(
              scale: btnProvider.scale,
              duration: const Duration(milliseconds: 100),
              curve: Curves.easeOut,
              child: SizedBox(
                height: size,
                width: size,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SvgPicture.asset(
                      bgPath,
                      height: size,
                      width: size,
                      fit: BoxFit.contain,
                    ),
                    SvgPicture.asset(
                      iconPath,
                      height: iconHeight,
                      width: iconWidth,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

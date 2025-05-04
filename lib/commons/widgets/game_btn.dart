import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:truth_dare_game/commons/commons_exports.dart';

class GameBtn extends StatelessWidget {
  final String btnTitle;
  final double btnFontSize;
  final VoidCallback onTap;
  final Color btnTitleStrokeColor;
  final Color btnTitleFillColor;
  final String btnPath;
  final double height;
  final double width;
  final String fontFamily;

  const GameBtn({
    super.key,
    required this.btnTitle,
    required this.onTap,
    required this.btnFontSize,
    required this.btnTitleStrokeColor,
    required this.btnTitleFillColor,
    required this.btnPath,
    required this.fontFamily,
    this.height = 55,
    this.width = 252,
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
                height: height,
                width: width,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SvgPicture.asset(
                      btnPath,
                      height: height,
                      width: width,
                      fit: BoxFit.contain,
                    ),
                    GameOutlinedText(
                      text: btnTitle,
                      fontSize: btnFontSize,
                      strokeColor: btnTitleStrokeColor,
                      fillColor: btnTitleFillColor,
                      fontFamily: fontFamily,
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

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:truth_dare_game/generators/assets.gen.dart';

class GameAppLogo extends StatelessWidget {
  final double height;
  final double width;
  final BoxFit fit;

  const GameAppLogo({
    super.key,
    this.height = 286,
    this.width = 286,
    this.fit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      Assets.images.svg.truthDareSpinner,
      height: height,
      width: width,
      fit: fit,
    );
  }
}

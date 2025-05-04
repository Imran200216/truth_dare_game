import 'package:flutter/material.dart';

class GameVerticalSpacer extends StatelessWidget {
  final double height;

  const GameVerticalSpacer({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height);
  }
}

class GameHorizontalSpacer extends StatelessWidget {
  final double width;

  const GameHorizontalSpacer({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width);
  }
}

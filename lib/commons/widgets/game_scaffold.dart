import 'package:flutter/material.dart';

class GameScaffold extends StatelessWidget {
  final Widget child;
  final String backgroundImagePath;

  const GameScaffold({
    super.key,
    required this.child,
    required this.backgroundImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Image.asset(
            backgroundImagePath,
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fitHeight,
          ),

          // Page content
          child,
        ],
      ),
    );
  }
}

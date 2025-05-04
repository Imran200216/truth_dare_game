import 'package:flutter/material.dart';

class GameOutlinedText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color strokeColor;
  final Color fillColor;
  final String fontFamily;

  const GameOutlinedText({
    super.key,
    required this.text,
    required this.fontSize,
    required this.strokeColor,
    required this.fillColor,
    required this.fontFamily,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontFamily: fontFamily,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 8
              ..color = strokeColor,
          ),
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontFamily: fontFamily,
            color: fillColor,
          ),
        ),
      ],
    );
  }
}

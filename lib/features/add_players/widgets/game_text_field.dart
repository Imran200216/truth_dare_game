import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GameTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final String hintText;
  final double height;
  final double width;
  final Color cursorColor;
  final Color textColor;
  final String fontFamily;
  final double fontSize;
  final FontWeight fontWeight;
  final String backgroundSvgPath;

  const GameTextField({
    super.key,
    required this.controller,
    this.validator,
    this.hintText = '',
    this.height = 68,
    this.width = 306,
    required this.cursorColor,
    required this.textColor,
    required this.fontFamily,
    this.fontSize = 20,
    this.fontWeight = FontWeight.bold,
    required this.backgroundSvgPath,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          backgroundSvgPath,
          height: height,
          width: width,
          fit: BoxFit.contain,
        ),
        SizedBox(
          height: height,
          width: width,
          child: TextFormField(
            controller: controller,
            cursorColor: cursorColor,
            style: TextStyle(
              color: textColor,
              fontFamily: fontFamily,
              fontWeight: fontWeight,
              fontSize: fontSize,
            ),
            validator: validator,
            decoration: InputDecoration(
              border: InputBorder.none,
              filled: true,
              fillColor: Colors.transparent,
              hintText: hintText,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

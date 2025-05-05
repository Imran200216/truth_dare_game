import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:truth_dare_game/generators/colors.gen.dart';
import 'package:truth_dare_game/generators/fonts.gen.dart';

class GameScaffold extends StatelessWidget {
  final Widget child;
  final String backgroundImagePath;
  final bool showAppBar;
  final String? appBarTitle;
  final String? leadingSvgAsset;
  final VoidCallback? onLeadingIconPressed;

  const GameScaffold({
    super.key,
    required this.child,
    required this.backgroundImagePath,
    this.showAppBar = false,
    this.appBarTitle,
    this.leadingSvgAsset,
    this.onLeadingIconPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: showAppBar
          ? AppBar(
              backgroundColor: ColorName.appBarBg,
              elevation: 0,
              centerTitle: true,
              title: Text(
                appBarTitle ?? '',
                style: TextStyle(
                  fontSize: 24,
                  color: ColorName.white,
                  fontFamily: FontFamily.balooThambi,
                  fontWeight: FontWeight.w700,
                ),
              ),
              leading: leadingSvgAsset != null
                  ? IconButton(
                      icon: SvgPicture.asset(
                        leadingSvgAsset!,
                        height: 24,
                        width: 24,
                        colorFilter: const ColorFilter.mode(
                          Colors.white,
                          BlendMode.srcIn,
                        ),
                      ),
                      onPressed:
                          onLeadingIconPressed ??
                          () {
                            Navigator.of(context).pop();
                          },
                    )
                  : null,
            )
          : null,
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

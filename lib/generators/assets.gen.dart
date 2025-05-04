/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/BalooThambi-Regular.ttf
  String get balooThambiRegular => 'assets/fonts/BalooThambi-Regular.ttf';

  /// List of all assets
  List<String> get values => [balooThambiRegular];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// Directory path: assets/images/png
  $AssetsImagesPngGen get png => const $AssetsImagesPngGen();

  /// Directory path: assets/images/svg
  $AssetsImagesSvgGen get svg => const $AssetsImagesSvgGen();
}

class $AssetsImagesPngGen {
  const $AssetsImagesPngGen();

  /// File path: assets/images/png/Splash.png
  AssetGenImage get splash =>
      const AssetGenImage('assets/images/png/Splash.png');

  /// File path: assets/images/png/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/png/logo.png');

  /// File path: assets/images/png/play-intro.png
  AssetGenImage get playIntro =>
      const AssetGenImage('assets/images/png/play-intro.png');

  /// List of all assets
  List<AssetGenImage> get values => [splash, logo, playIntro];
}

class $AssetsImagesSvgGen {
  const $AssetsImagesSvgGen();

  /// File path: assets/images/svg/add.svg
  String get add => 'assets/images/svg/add.svg';

  /// File path: assets/images/svg/adults.svg
  String get adults => 'assets/images/svg/adults.svg';

  /// File path: assets/images/svg/back.svg
  String get back => 'assets/images/svg/back.svg';

  /// File path: assets/images/svg/game-circular-btn.svg
  String get gameCircularBtn => 'assets/images/svg/game-circular-btn.svg';

  /// File path: assets/images/svg/game-filled-btn.svg
  String get gameFilledBtn => 'assets/images/svg/game-filled-btn.svg';

  /// File path: assets/images/svg/kids.svg
  String get kids => 'assets/images/svg/kids.svg';

  /// File path: assets/images/svg/music.svg
  String get music => 'assets/images/svg/music.svg';

  /// File path: assets/images/svg/play.svg
  String get play => 'assets/images/svg/play.svg';

  /// File path: assets/images/svg/settings.svg
  String get settings => 'assets/images/svg/settings.svg';

  /// File path: assets/images/svg/share.svg
  String get share => 'assets/images/svg/share.svg';

  /// File path: assets/images/svg/star.svg
  String get star => 'assets/images/svg/star.svg';

  /// File path: assets/images/svg/teens.svg
  String get teens => 'assets/images/svg/teens.svg';

  /// File path: assets/images/svg/truth-dare-spinner.svg
  String get truthDareSpinner => 'assets/images/svg/truth-dare-spinner.svg';

  /// List of all assets
  List<String> get values => [
    add,
    adults,
    back,
    gameCircularBtn,
    gameFilledBtn,
    kids,
    music,
    play,
    settings,
    share,
    star,
    teens,
    truthDareSpinner,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

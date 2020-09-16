/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  AssetGenImage get circleLauncher =>
      const AssetGenImage('assets/images/circle_launcher.png');
  AssetGenImage get dinnerIcon =>
      const AssetGenImage('assets/images/dinner_icon.png');
  AssetGenImage get icon => const AssetGenImage('assets/images/icon.png');
  AssetGenImage get lion => const AssetGenImage('assets/images/lion.png');
  AssetGenImage get lionBlack =>
      const AssetGenImage('assets/images/lion_black.png');
  AssetGenImage get splash => const AssetGenImage('assets/images/splash.png');
  AssetGenImage get springbok =>
      const AssetGenImage('assets/images/springbok.png');
  AssetGenImage get springbokBlack =>
      const AssetGenImage('assets/images/springbok_black.png');
  AssetGenImage get tableMountain =>
      const AssetGenImage('assets/images/table_mountain.png');
  AssetGenImage get wineIcon =>
      const AssetGenImage('assets/images/wine_icon.png');
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName)
      : _assetName = assetName,
        super(assetName);
  final String _assetName;

  Image image({
    ImageFrameBuilder frameBuilder,
    ImageLoadingBuilder loadingBuilder,
    ImageErrorWidgetBuilder errorBuilder,
    String semanticLabel,
    bool excludeFromSemantics = false,
    double width,
    double height,
    Color color,
    BlendMode colorBlendMode,
    BoxFit fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => _assetName;
}

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  AssetGenImage get bed => const AssetGenImage('assets/images/bed.png');
  AssetGenImage get circleLauncher =>
      const AssetGenImage('assets/images/circle_launcher.png');
  AssetGenImage get homeBg => const AssetGenImage('assets/images/home_bg.png');
  AssetGenImage get icon => const AssetGenImage('assets/images/icon.png');
  AssetGenImage get map => const AssetGenImage('assets/images/map.jpg');
  $AssetsImagesMolenvlietGen get molenvliet =>
      const $AssetsImagesMolenvlietGen();
  AssetGenImage get rugbyBall =>
      const AssetGenImage('assets/images/rugby_ball.png');
  AssetGenImage get schedule =>
      const AssetGenImage('assets/images/schedule.png');
  AssetGenImage get splash => const AssetGenImage('assets/images/splash.jpg');
  AssetGenImage get tableMountain =>
      const AssetGenImage('assets/images/table_mountain.png');
  AssetGenImage get venue => const AssetGenImage('assets/images/venue.jpg');
}

class $AssetsImagesMolenvlietGen {
  const $AssetsImagesMolenvlietGen();

  AssetGenImage get m1 =>
      const AssetGenImage('assets/images/molenvliet/m1.png');
  AssetGenImage get m2 =>
      const AssetGenImage('assets/images/molenvliet/m2.png');
  AssetGenImage get m3 =>
      const AssetGenImage('assets/images/molenvliet/m3.png');
  AssetGenImage get m4 =>
      const AssetGenImage('assets/images/molenvliet/m4.png');
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
    Key key,
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
      key: key,
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

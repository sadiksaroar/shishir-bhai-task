// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Blood Test.png
  AssetGenImage get bloodTest =>
      const AssetGenImage('assets/images/Blood Test.png');

  /// File path: assets/images/Colors.red.png
  AssetGenImage get colorsRed =>
      const AssetGenImage('assets/images/Colors.red.png');

  /// File path: assets/images/Dentist.png
  AssetGenImage get dentist => const AssetGenImage('assets/images/Dentist.png');

  /// File path: assets/images/Home.jpg
  AssetGenImage get home => const AssetGenImage('assets/images/Home.jpg');

  /// File path: assets/images/Home_icon.png
  AssetGenImage get homeIcon =>
      const AssetGenImage('assets/images/Home_icon.png');

  /// File path: assets/images/SCHEDULE.png
  AssetGenImage get schedule =>
      const AssetGenImage('assets/images/SCHEDULE.png');

  /// File path: assets/images/Screenshot_2025-08-24-08-45-35-18_5903e06a9c702ed4ed1e3d91cb38cfbf 2.png
  AssetGenImage
  get screenshot20250824084535185903e06a9c702ed4ed1e3d91cb38cfbf2 =>
      const AssetGenImage(
        'assets/images/Screenshot_2025-08-24-08-45-35-18_5903e06a9c702ed4ed1e3d91cb38cfbf 2.png',
      );

  /// File path: assets/images/cardolgey.png
  AssetGenImage get cardolgey =>
      const AssetGenImage('assets/images/cardolgey.png');

  /// File path: assets/images/cleander_ico.png
  AssetGenImage get cleanderIco =>
      const AssetGenImage('assets/images/cleander_ico.png');

  /// File path: assets/images/deash_borad_icon.png
  AssetGenImage get deashBoradIcon =>
      const AssetGenImage('assets/images/deash_borad_icon.png');

  /// File path: assets/images/lungch.png
  AssetGenImage get lungch => const AssetGenImage('assets/images/lungch.png');

  /// File path: assets/images/mean.jpg
  AssetGenImage get mean => const AssetGenImage('assets/images/mean.jpg');

  /// File path: assets/images/neurolgy.png
  AssetGenImage get neurolgy =>
      const AssetGenImage('assets/images/neurolgy.png');

  /// File path: assets/images/notification_icon.png
  AssetGenImage get notificationIcon =>
      const AssetGenImage('assets/images/notification_icon.png');

  /// File path: assets/images/serach_icon.png
  AssetGenImage get serachIcon =>
      const AssetGenImage('assets/images/serach_icon.png');

  /// File path: assets/images/shutkes_icon.png
  AssetGenImage get shutkesIcon =>
      const AssetGenImage('assets/images/shutkes_icon.png');

  /// File path: assets/images/troma_sentar.png
  AssetGenImage get tromaSentar =>
      const AssetGenImage('assets/images/troma_sentar.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    bloodTest,
    colorsRed,
    dentist,
    home,
    homeIcon,
    schedule,
    screenshot20250824084535185903e06a9c702ed4ed1e3d91cb38cfbf2,
    cardolgey,
    cleanderIco,
    deashBoradIcon,
    lungch,
    mean,
    neurolgy,
    notificationIcon,
    serachIcon,
    shutkesIcon,
    tromaSentar,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

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

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}

import 'package:flutter/material.dart';

enum ImageEnums { carrot, colors_carrot, onboarding, sign_in, splash ,card_banner,banana}

extension ImageExtensions on ImageEnums {
  String get _toPath => 'assets/images/$name.png';
  Image get toImage => Image.asset(_toPath);
  Image get carrotToImage => ImageEnums.colors_carrot.toImage;
}

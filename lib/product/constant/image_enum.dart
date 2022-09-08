import 'package:flutter/material.dart';

enum ImageEnums { carrot, colors_carrot, onboarding, sign_in, splash }

extension ImageExtensions on ImageEnums {
  String get _toPath => 'assets/images/$name.png';
  Image get toImage => Image.asset(_toPath);
}

import 'package:flutter/material.dart';

import 'if_custom_colors.dart';
import 'palette.dart';

class CustomLightColors implements CustomColors {
  @override
  Color get primary => Palette.hoseoBlue;

  @override
  Color get onPrimary => Palette.white;

  @override
  Color get secondary => Palette.hoseoSkyBlue;

  @override
  Color get onSecondary => Palette.white;

  @override
  Color get tertiary => Palette.hoseoRed;

  @override
  Color get onTertiary => Palette.white;

  @override
  Color get surface => Palette.white;

  @override
  Color get onSurface => Palette.black;

  @override
  Color get background => Palette.white;

  @override
  Color get onBackground => Palette.black;

  @override
  Color get error => Palette.red;

  @override
  Color get onError => Palette.white;

  @override
  Color get defaultTextColor => Palette.black;
}

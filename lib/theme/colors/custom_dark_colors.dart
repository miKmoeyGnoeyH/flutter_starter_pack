

import 'package:flutter/material.dart';

import 'if_custom_colors.dart';
import 'palette.dart';

class CustomDarkColors implements CustomColors {
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
  Color get surface => Palette.black;

  @override
  Color get onSurface => Palette.white;

  @override
  Color get background => Palette.black;

  @override
  Color get onBackground => Palette.white;

  @override
  Color get error => Palette.red;

  @override
  Color get onError => Palette.white;

  @override
  Color get defaultTextColor => Palette.white;
}
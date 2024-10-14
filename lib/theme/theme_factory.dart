import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'colors/dark_theme.dart';
import 'colors/light_theme.dart';

abstract class ThemeFactory {
  static ThemeData get getThemeDataDependsOnSystemBrightness {
    switch (systemBrightness) {
      case Brightness.dark:
        return darkTheme;
      case Brightness.light:
        return lightTheme;
      default:
        return lightTheme;
    }
  }

  static Brightness get systemBrightness =>
      SchedulerBinding.instance.platformDispatcher.platformBrightness;
}

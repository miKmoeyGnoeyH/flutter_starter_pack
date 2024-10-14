import 'package:flutter/material.dart';

import 'palette.dart';

ThemeData get lightTheme => ThemeData(
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: Palette.primary,
          onPrimary: Palette.lightOnPrimary,
          secondary: Palette.secondary,
          onSecondary: Palette.lightOnSecondary,
          error: Palette.error,
          onError: Palette.onError,
          surface: Palette.lightSurface,
          onSurface: Palette.lightOnSurface),
    );
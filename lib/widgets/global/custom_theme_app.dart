
import 'package:flutter/material.dart';

import '../../theme/colors/if_custom_colors.dart';
import '../../theme/custom_theme_holder.dart';
import '../../theme/theme_factory.dart';

class CustomThemeApp extends StatefulWidget {
  const CustomThemeApp({required this.child, super.key});

  @override
  State<CustomThemeApp> createState() => _CustomThemeAppState();

  final Widget child;
}

class _CustomThemeAppState extends State<CustomThemeApp>
    with WidgetsBindingObserver {
  CustomColors appColors = ThemeFactory.getAppColorsDependsOnSystemBrightness;

  @override
  Widget build(BuildContext context) {
    return CustomThemeHolder(
      appColors: appColors,
      child: Builder(
        builder: (context) => widget.child,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangePlatformBrightness() {
    debugPrint('didChangePlatformBrightness');
    setState(() {
      appColors = ThemeFactory.getAppColorsDependsOnSystemBrightness;
    });
    super.didChangePlatformBrightness();
  }
}

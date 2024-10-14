import 'package:bloc_ex/theme/theme_factory.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class App extends StatefulWidget {
  static bool isForeground = true;

  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> with WidgetsBindingObserver {
  ThemeData theme = ThemeFactory.getThemeDataDependsOnSystemBrightness;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: const Home(),
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
      theme = ThemeFactory.getThemeDataDependsOnSystemBrightness;
    });
    super.didChangePlatformBrightness();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    debugPrint('didChangeAppLifecycleState: $state');
    switch (state) {
      case AppLifecycleState.resumed:
        App.isForeground = true;
        break;
      case AppLifecycleState.inactive:
      case AppLifecycleState.paused:
        App.isForeground = false;
        break;
      case AppLifecycleState.detached:
      default:
        break;
    }
    super.didChangeAppLifecycleState(state);
  }
}
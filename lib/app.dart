import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'managers/navigator/navigator_key_manager.dart';
import 'managers/navigator/routes.dart';
import 'theme/comsume/custom_theme_app.dart';

class App extends StatefulWidget {
  static bool isForeground = true;

  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return CustomThemeApp(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        navigatorKey: NavigatorKeyManager.navigatorKey,
        onGenerateRoute: onGenerateRoute,
        initialRoute: RouteNames.home,
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

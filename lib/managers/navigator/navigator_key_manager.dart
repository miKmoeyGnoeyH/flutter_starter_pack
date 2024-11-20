import 'package:flutter/material.dart';

abstract class NavigatorKeyManager {
  static void pop({dynamic result}) {
    navigatorKey.currentState!.pop(result);
  }

  static void popUntil(String routeName) {
    navigatorKey.currentState!.popUntil((route) => route.settings.name == routeName);
  }

  static void pushNamed(String routeName, {Object? arguments}) {
    navigatorKey.currentState!.pushNamed(routeName, arguments: arguments);
  }

  static void pushNamedAndRemoveUntil(String routeName, {Object? arguments}) {
    navigatorKey.currentState!.pushNamedAndRemoveUntil(routeName, (route) => false, arguments: arguments);
  }

  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  // static NavigatorState? get navigatorState => navigatorKey.currentState;

  // static final NavigatorKeyManager _instance = NavigatorKeyManager._internal();
  //
  // NavigatorKeyManager._internal() {
  //   log("NavigatorKeyManager created.");
  // }
  //
  // factory NavigatorKeyManager() {
  //   return _instance;
  // }
}

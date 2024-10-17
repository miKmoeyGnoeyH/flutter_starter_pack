import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'app.dart';
import 'managers/prefs/prefs_manager.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  PrefsManager.init();

  await EasyLocalization.ensureInitialized();
  await dotenv.load(fileName: "assets/configs/.env");

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en'),
        Locale('ko'),
      ],
      fallbackLocale: const Locale('en'),
      path: 'assets/translations',
      child: const App(),
    ),
  );
}

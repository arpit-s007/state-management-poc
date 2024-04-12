import 'package:flutter/material.dart';
import 'package:newsapi_getx/src/app.dart';

class BootConfig {
  initializeApp() {
    WidgetsFlutterBinding.ensureInitialized();
    // if(!GetPlatform.isWeb) {
    //     SystemChrome.setPreferredOrientations([
    //       DeviceOrientation.portraitUp,
    //       DeviceOrientation.portraitDown,
    //     ]);
    //   }
    runApp(const App());
  }
}
import 'package:event_app/view/getStarted/get_started_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Utils/Constant/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        themeMode: ThemeMode.light,
        theme: CustomTheme.lightTheme,
        darkTheme: CustomTheme.darkTheme,
        debugShowCheckedModeBanner: false,
        home: const GetStartedView());
  }
}

import 'package:event_app/commons/bottom_navigation.dart';
<<<<<<< HEAD
import 'package:event_app/view/MonthlyTask/monthly_task_screen.dart';
import 'package:event_app/view/TodayTask/today_task_screen.dart';
import 'package:event_app/view/getStarted/get_started_view.dart';
=======
>>>>>>> 89b4ec5b1d4c60c7a6b23b813b49df89429a7f90
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
        themeMode: ThemeMode.dark,
        theme: CustomTheme.lightTheme,
        darkTheme: CustomTheme.darkTheme,
        debugShowCheckedModeBanner: false,
        home: const CustomBottomNavigation());
  }
}

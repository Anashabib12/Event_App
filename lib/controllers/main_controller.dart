import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainController extends GetxController {
  var isDark = false.obs;
  Rx<bool> isVisible = true.obs;

  @override
  void onInit() {
    super.onInit();
    _loadTheme(); // Load the theme when the controller initializes
  }

  void _loadTheme() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      isDark.value = prefs.getBool('darkMode') ?? false;
      Get.changeThemeMode(isDark.value ? ThemeMode.dark : ThemeMode.light);
    } catch (e) {
      // Handle any errors here (e.g., log them)
    }
  }

  void changeTheme() async {
    isDark.value = !isDark.value;
    Get.changeThemeMode(isDark.value ? ThemeMode.dark : ThemeMode.light);

    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setBool(
          'darkMode', isDark.value); // Save the theme preference
    } catch (e) {
      // Handle any errors here (e.g., log them)
    }
  }

  void isVisibleChange() {
    isVisible.value = !isVisible.value;
  }
}

import 'package:event_app/firebase_options.dart';
import 'package:event_app/services/auth/auth_gate.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'Utils/Constant/theme.dart';
import 'services/auth/auth_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shared_preferences/shared_preferences.dart'; // Import shared_preferences

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase
  try {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
  } catch (e) {
    // Handle errors during Firebase initialization
    print("Error initializing Firebase: $e");
    return; // Exit the app if Firebase fails to initialize
  }

  // Load dark mode preference
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isDarkMode = prefs.getBool('darkMode') ?? false;

  runApp(
    ChangeNotifierProvider(
      create: (context) => AuthService(),
      child: MainApp(isDarkMode: isDarkMode), // Pass the dark mode preference
    ),
  );
}

class MainApp extends StatelessWidget {
  final bool isDarkMode;

  const MainApp({super.key, required this.isDarkMode});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: isDarkMode
          ? ThemeMode.dark
          : ThemeMode.light, // Apply the theme based on the saved preference
      theme: CustomTheme.lightTheme,
      darkTheme: CustomTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: const AuthGate(),
    );
  }
}

import 'package:event_app/commons/custom_container.dart';
import 'package:event_app/controllers/main_controller.dart';
import 'package:event_app/view/ProfileScreen/langauge_screen.dart';
import 'package:event_app/widgets/custom_ap_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

bool isSwitchedPermission = false;
bool isSwitchedDarkMode = false;
bool isSwitchedNotifi = false;

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final controller = Get.put(MainController());
    final height  = MediaQuery.of(context).size.height;
    final width  = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: width * 0.05,vertical: height * 0.09),
          child: Column(
            children: [
              Row(
                children: [
                  CustomApButton(
                    onTap: () {
                      Get.back();
                    },
                    icon: Icons.arrow_back_ios_rounded,
                  ),
                   SizedBox(
                    width: width * 0.25,
                  ),
                  Text(
                    'Settings',
                    style: TextStyle(
                        fontSize: 23,
                        color: theme.primaryColor,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
               SizedBox(
                height: height *0.09,
              ),
              CustomContainer(
                text: "Permission",
                suffixSwitch: Switch(
                  value: isSwitchedPermission,
                  onChanged: (value) {
                    setState(() {
                      isSwitchedPermission = value;
                    });
                  },
                  activeTrackColor: const Color(0xff3580FF),
                  activeColor: const Color(0xff002055),
                  inactiveTrackColor: const Color(0xff4C5065),
                  inactiveThumbColor: const Color(0xff002055),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomContainer(
                text: "Push Notification",
                suffixSwitch: Switch(
                  value: isSwitchedNotifi,
                  onChanged: (value) {
                    setState(() {
                      isSwitchedNotifi = value;
                    });
                  },
                  activeTrackColor: const Color(0xff3580FF),
                  activeColor: const Color(0xff002055),
                  inactiveTrackColor: const Color(0xff4C5065),
                  inactiveThumbColor: const Color(0xff002055),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomContainer(
                text: "Dark Mode",
                suffixSwitch: Switch(
                  value: controller.isDark.value,
                  onChanged: (value) {
                    controller.changeTheme();
                  },
                  activeTrackColor: const Color(0xff3580FF),
                  activeColor: const Color(0xff002055),
                  inactiveTrackColor: const Color(0xff4C5065),
                  inactiveThumbColor: const Color(0xff002055),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // Uncomment below lines if needed
              const CustomContainer(
                text: "Security",
                suffixIcon: Icons.arrow_forward_ios_rounded,
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomContainer(
                text: "Help",
                suffixIcon: Icons.arrow_forward_ios_rounded,
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomContainer(
                text: "About Application",
                suffixIcon: Icons.arrow_forward_ios_rounded,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomContainer(
                onTap: () => Get.to(const LanguageScreen()),
                text: "Languages",
                suffixIcon: Icons.arrow_forward_ios_rounded,
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

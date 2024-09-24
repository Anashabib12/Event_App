import 'package:event_app/commons/custom_container.dart';
import 'package:event_app/view/ProfileScreen/EditProfile/edit_profile_screen.dart';
import 'package:event_app/view/ProfileScreen/SideMenu/side_menu_screen.dart';
import 'package:event_app/view/ProfileScreen/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: theme.scaffoldBackgroundColor,
        title: Text(
          'Profile',
          style: TextStyle(color: theme.primaryColor),
        ),
        // leading: IconButton(
        //     onPressed: () {

        // },
        //     icon: Icon(
        //       Icons.arrow_back_ios_rounded,
        //       color: theme.primaryColor,
        //     )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
          child: Column(
            children: [
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.grey,
                      child: Center(
                        child: Icon(
                          Icons.person,
                          size: 50,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Unknown User",
                      style: TextStyle(color: theme.primaryColor, fontSize: 18),
                    ),
                    Text(
                      "@unknown_user",
                      style: TextStyle(
                          color: theme.primaryColor.withOpacity(0.4),
                          fontSize: 14),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(const EditProfileScreen());
                      },
                      child: Center(
                        child: Container(
                          width: 54,
                          height: 28,
                          decoration: BoxDecoration(
                              border: Border.all(color: theme.iconTheme.color!),
                              borderRadius: BorderRadius.circular(8)),
                          child: Center(
                            child: Text(
                              "Edit",
                              style: TextStyle(color: theme.primaryColor),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Iconsax.clock,
                        color: theme.primaryColor,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "5",
                        style: TextStyle(
                          color: theme.primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "On Going",
                        style: TextStyle(
                            color: theme.primaryColor.withOpacity(0.4),
                            fontSize: 12),
                      )
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 1,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Iconsax.tick_square,
                        color: theme.primaryColor,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "25",
                        style: TextStyle(
                          color: theme.primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Total Completed",
                        style: TextStyle(
                            color: theme.primaryColor.withOpacity(0.4),
                            fontSize: 12),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              CustomContainer(
                  suffixIcon: Icons.arrow_forward_ios_outlined,
                  onTap: () => Get.to(const SideMenuScreen()),
                  text: "My Projects"),
              const SizedBox(
                height: 20,
              ),
              const CustomContainer(
                  suffixIcon: Icons.arrow_forward_ios_outlined,
                  text: "Join a Team"),
              const SizedBox(
                height: 20,
              ),
              const CustomContainer(
                suffixIcon: Icons.arrow_forward_ios_outlined,
                text: "Settings",
                onTap: onTap,
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomContainer(
                  suffixIcon: Icons.arrow_forward_ios_outlined,
                  text: "My Tasks"),
            ],
          ),
        ),
      ),
    );
  }
}

onTap() {
  Get.to(const SettingsScreen());
}

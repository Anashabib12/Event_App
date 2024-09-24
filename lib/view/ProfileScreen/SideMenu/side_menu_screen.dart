import 'package:event_app/widgets/small_text_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../EditProfile/edit_profile_screen.dart';

class SideMenuScreen extends StatelessWidget {
  const SideMenuScreen({super.key});

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
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.cancel_outlined,
              color: theme.primaryColor,
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                          height: 28,
                          width: 100,
                          decoration: BoxDecoration(
                              border: Border.all(color: theme.iconTheme.color!),
                              borderRadius: BorderRadius.circular(8)),
                          child: Center(
                            child: Text(
                              "View Profile",
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
              Text(
                "Workspace",
                style: TextStyle(
                    fontSize: 24,
                    color: theme.primaryColor,
                    fontWeight: FontWeight.w700),
              ),
              const SmallTextContainer(text: "UI Design", number: "Invite"),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Manage",
                style: TextStyle(
                    fontSize: 24,
                    color: theme.primaryColor,
                    fontWeight: FontWeight.w700),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: SmallTextContainer(text: "Team", number: "6"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: SmallTextContainer(text: "Label", number: "13"),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: SmallTextContainer(text: "Task", number: "8"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: SmallTextContainer(text: "Member", number: "13"),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: theme.iconTheme.color),
                      child: Text(
                        "Log Out",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: theme.primaryColor),
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}

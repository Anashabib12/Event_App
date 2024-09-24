import 'package:event_app/commons/progress_card.dart';
import 'package:event_app/commons/task_card.dart';
import 'package:event_app/extensions/datetime.dart';
import 'package:event_app/view/TaskStatus/task_status_screen.dart';
import 'package:event_app/widgets/custom_ap_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void onTap() {
    Get.back();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomApButton(
                      onTap: onTap,
                      icon: Iconsax.category,
                    ),
                    Text(
                      DateTime.now().dateTime,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    CustomApButton(onTap: () {}, icon: Iconsax.notification),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  "Let’s make a \nhabit together 🙌",
                  style: TextStyle(
                      fontSize: 28,
                      color: theme.primaryColor,
                      fontWeight: FontWeight.w800),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 150,
                  // Adjust height based on your UI needs
                  child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ProgressCard(
                        title: "Application Design",
                        subtitle: "UI Design Kit",
                        progress: 50,
                        total: 80,
                        users: const [
                          "Assets/person/Ellipse (1).png",
                          "Assets/person/Ellipse (1).png"
                        ],
                        index: index,
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "In Progress",
                      style: TextStyle(
                          fontSize: 18,
                          color: theme.primaryColor,
                          fontWeight: FontWeight.w800),
                    ),
                    Icon(Icons.arrow_forward_ios, color: theme.primaryColor)
                  ],
                ),
                TaskCard(
                    progress: 0.9,
                    appName: 'Productivity Mobile App',
                    taskName: 'Create Detail Booking',
                    dateTime: '2 Mins Ago',
                    onTap: () {
                      setState(() {
                        Get.to(const TaskStatusScreen());
                      });
                    }),
                const TaskCard(
                  progress: 0.9,
                  appName: 'Productivity Mobile App',
                  taskName: 'Create Detail Booking',
                  dateTime: '2 Mins Ago',
                ),
                const TaskCard(
                  progress: 0.9,
                  appName: 'Productivity Mobile App',
                  taskName: 'Create Detail Booking',
                  dateTime: '2 Mins Ago',
                ),
                const TaskCard(
                  progress: 0.9,
                  appName: 'Productivity Mobile App',
                  taskName: 'Create Detail Booking',
                  dateTime: '2 Mins Ago',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

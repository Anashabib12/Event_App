import 'package:event_app/extensions/datetime.dart';
import 'package:event_app/view/MonthlyTask/monthly_task_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';

import '../../widgets/custom_ap_button.dart';

class TodayTaskScreen extends StatefulWidget {
  const TodayTaskScreen({super.key});

  @override
  State<TodayTaskScreen> createState() => _TodayTaskScreenState();
}

class _TodayTaskScreenState extends State<TodayTaskScreen> {
  void onTap() {
    Get.back();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    // Format the date for today's display
    String formattedTodayDate = DateFormat('dd MMMM ').format(DateTime.now());

    // Example tasks with their associated times
    List<Map<String, String>> tasks = [
      {'time': '09:00 AM', 'title': 'Morning Standup'},
      {'time': '11:00 AM', 'title': 'Team Meeting'},
      {'time': '01:00 PM', 'title': 'Project Review'},
      {'time': '03:00 PM', 'title': 'Client Call'},
      {'time': '05:00 PM', 'title': 'Code Refactoring'},
    ];

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor, // Dark background
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top Row with Back Button and Edit Button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomApButton(
                      onTap: onTap,
                      icon: Icons.arrow_back_ios_new_rounded,
                    ),
                    const Text(
                      "Today Tasks",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    CustomApButton(onTap: onTap, icon: Iconsax.edit_2),
                  ],
                ),
                const SizedBox(height: 30),

                // Today's Date and Calendar Button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "$formattedTodayDate ✍", // Use formatted date
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    CustomApButton(
                      icon: Iconsax.calendar_1,
                      onTap: () {
                        Get.to(const MonthlyTaskScreen());
                      },
                    )
                  ],
                ),
                const SizedBox(height: 4),

                // Task Count Row
                const Row(
                  children: [
                    Text(
                      "15 tasks today", // Static task count for now
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // Horizontal Date Selector Row
                SizedBox(
                  height: 118,
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 6, // Showing 6 upcoming dates
                    itemBuilder: (context, index) {
                      DateTime date = DateTime.now().add(Duration(days: index));
                      String formattedDate =
                          DateFormat('dd').format(date); // Get day number
                      String dayOfWeek =
                          DateFormat('EEE').format(date); // Get short day name
                      bool isToday = date
                          .isSameDate(DateTime.now()); // Check if it's today

                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 118,
                          width: 64,
                          margin: const EdgeInsets.only(right: 4),
                          decoration: BoxDecoration(
                            color: isToday
                                ? theme.iconTheme.color
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: isToday
                                  ? Colors.transparent
                                  : Colors.grey.withOpacity(0.5),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                formattedDate,
                                style: TextStyle(
                                  color: isToday
                                      ? Colors.white
                                      : Colors.grey.withOpacity(0.8),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 25,
                                ),
                              ),
                              Text(
                                dayOfWeek,
                                style: TextStyle(
                                  color: isToday
                                      ? Colors.white
                                      : Colors.grey.withOpacity(0.8),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),

                const SizedBox(height: 20),

                // Task List Section
                // ======================================= YET TO WORK ON ===================================
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: tasks.length,
                  separatorBuilder: (context, index) => Divider(
                    color: Colors.grey.withOpacity(0.4),
                  ),
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        // Time and title section
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                tasks[index]['time']!,
                                style: TextStyle(
                                  color: theme.primaryColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(height: 4),
                            ],
                          ),
                        ),
                        // Avatar and time duration section
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: const Color(0xffb9e8ff1a),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  tasks[index]['title']!,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const CircleAvatar(
                                      backgroundImage: AssetImage(
                                          "assets/person/Ellipse (1).png"), // Corrected asset path
                                      radius: 18,
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      "10 AM - 11 AM",
                                      style: TextStyle(
                                        color: theme.primaryColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

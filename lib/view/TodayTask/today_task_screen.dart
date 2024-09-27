import 'dart:convert';

import 'package:event_app/extensions/datetime.dart';
import 'package:event_app/model/task_model.dart';
import 'package:event_app/view/MonthlyTask/monthly_task_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../widgets/custom_ap_button.dart';

class TodayTaskScreen extends StatefulWidget {
  const TodayTaskScreen({super.key});

  @override
  State<TodayTaskScreen> createState() => _TodayTaskScreenState();
}

class _TodayTaskScreenState extends State<TodayTaskScreen> {
  List<Task> tasks = [];

  @override
  void initState() {
    super.initState();
    _loadTasks();
  }

  Future<void> _loadTasks() async {
    final prefs = await SharedPreferences.getInstance();
    List<String> taskList = prefs.getStringList('tasks') ?? [];

    setState(() {
      tasks = taskList.map((task) => Task.fromJson(jsonDecode(task))).toList();
    });
  }

  void onTap() {
    Get.back();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    String formattedTodayDate = DateFormat('dd MMMM ').format(DateTime.now());

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Row with Back and Edit buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomApButton(
                    onTap: onTap,
                    icon: Icons.arrow_back_ios_new_rounded,
                  ),
                  Text(
                    "Today Tasks",
                    style: TextStyle(
                      color: theme.primaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  CustomApButton(onTap: onTap, icon: Iconsax.edit_2),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "$formattedTodayDate ✍",
                    style: TextStyle(
                      color: theme.primaryColor,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CustomApButton(
                    icon: Iconsax.calendar_1,
                    onTap: () {
                      Get.to(const MonthlyTaskScreen());
                    },
                  ),
                ],
              ),
              const SizedBox(height: 4),
              const Row(
                children: [
                  Text(
                    "15 tasks today",
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
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    DateTime date = DateTime.now().add(Duration(days: index));
                    String formattedDate = DateFormat('dd').format(date);
                    String dayOfWeek = DateFormat('EEE').format(date);
                    bool isToday = date.isSameDate(DateTime.now());

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
              tasks.isEmpty
                  ? Text(
                      "No Tasks Avaiable",
                      style: TextStyle(color: theme.primaryColor),
                    )
                  : Expanded(
                      child: ListView.separated(
                        itemCount: tasks.length,
                        separatorBuilder: (context, index) =>
                            Divider(color: Colors.grey.withOpacity(0.4)),
                        itemBuilder: (context, index) {
                          final task = tasks[index];
                          return Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      task.timeStart,
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
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: const Color(0xffb9e8ff1a),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        task.taskName,
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
                                                "assets/person/Ellipse (1).png"),
                                            radius: 18,
                                          ),
                                          const SizedBox(width: 8),
                                          Expanded(
                                            child: Text(
                                              '${task.date}\nStart: ${task.timeStart} - End: ${task.timeEnd}',
                                              style: TextStyle(
                                                color: theme.primaryColor,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              overflow: TextOverflow
                                                  .visible, // Prevent overflow
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
                    ),
            ],
          ),
        ),
      ),
    );
  }
}

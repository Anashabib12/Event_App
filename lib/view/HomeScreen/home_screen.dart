import 'dart:convert';
import 'package:event_app/commons/progress_card.dart';
import 'package:event_app/commons/task_card.dart';
import 'package:event_app/model/task_model.dart';
import 'package:event_app/view/TodayTask/today_task_screen.dart';
import 'package:event_app/widgets/custom_ap_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Task> tasks = [];

  @override
  void initState() {
    super.initState();
    _loadTasks();
  }

  // _onTap(index) {
  //   Get.to(TaskStatusScreen(
  //     index: index,
  //   ));
  // }

  Future<void> _loadTasks() async {
    final prefs = await SharedPreferences.getInstance();
    List<String> taskList = prefs.getStringList('tasks') ?? [];

    setState(() {
      tasks = taskList.map((task) => Task.fromJson(jsonDecode(task))).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final theme = Theme.of(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: height * 0.07, horizontal: width * 0.06),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomApButton(
                    onTap: () {
                      Get.to(const TodayTaskScreen());
                    },
                    icon: Iconsax.category,
                  ),
                  Text(
                    'Today Tasks',
                    style: TextStyle(
                      color: theme.primaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  CustomApButton(onTap: () {}, icon: Iconsax.notification),
                ],
              ),
              const SizedBox(height: 40),
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
                  Icon(Icons.arrow_forward_ios, color: theme.primaryColor),
                ],
              ),
              // Display existing TaskCards
              // TaskCard(
              //     progress: 0.9,
              //     appName: 'Productivity Mobile App',
              //     taskName: 'Create Detail Booking',
              //     dateTime: '2 Mins Ago',
              //     onTap: () {
              //       Get.to(const TaskStatusScreen());
              //     }),

              const SizedBox(height: 20),
              // Show tasks from SharedPreferences
              tasks.isEmpty
                  ? const Center(child: Text('No tasks available'))
                  : ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: tasks.length,
                      itemBuilder: (context, index) {
                        final task = tasks[index];
                        return TaskCard(
                            progress: 0.0,
                            // onTap: _onTap(index),
                            dateTime:
                                '${task.date}\nStart: ${task.timeStart} - End: ${task.timeEnd}',
                            appName: task.taskName,
                            taskName: task.taskName);
                      },
                    ),
            ],
          ),
        ),
      ),
    );
  }
}

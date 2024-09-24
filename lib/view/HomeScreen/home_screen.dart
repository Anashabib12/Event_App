import 'package:event_app/commons/progress_card.dart';
import 'package:event_app/commons/task_card.dart';
import 'package:event_app/extensions/datetime.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Iconsax.category,
          color: theme.primaryColor,
        ),
        title: Text(
          DateTime.now().dateTime, // Ensure your extension is working properly.
          style: TextStyle(color: theme.primaryColor),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 4.0),
            child: Icon(Iconsax.notification),
          )
        ],
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: theme.scaffoldBackgroundColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
    );
  }
}

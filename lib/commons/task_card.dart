import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class TaskCard extends StatelessWidget {
  const TaskCard(
      {super.key,
      required this.progress,
      required this.appName,
      required this.taskName,
      this.dateTime});

  final double progress;
  final String appName;
  final String taskName;
  final dateTime;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.grey.withOpacity(0.2),width: 1.5)),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  appName,
                  style: TextStyle(
                    color: theme.primaryColor,
                    fontSize: 14,
                  ),
                ),
                Text(
                  taskName,
                  style: TextStyle(
                    color: theme.primaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  dateTime,
                  style: TextStyle(color: theme.primaryColor),
                ),
              ],
            ),
          ),
          CircularPercentIndicator(
            radius: 32.0,
            lineWidth: 6.0,
            percent: progress,
            center: Text(
              "${(progress * 100).toInt()}%",
              style: TextStyle(color: theme.primaryColor),
            ),
            progressColor: Colors.blueAccent,
          ),
        ],
      ),
    );
  }
}

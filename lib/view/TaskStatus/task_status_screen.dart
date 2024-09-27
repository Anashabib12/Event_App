import 'package:event_app/Utils/Constant/colors.dart';

import 'package:event_app/widgets/custom_ap_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class TaskStatusScreen extends StatelessWidget {
  const TaskStatusScreen({
    super.key,
    required this.index,
  });

  final index;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final theme = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.04, vertical: height * 0.06),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomApButton(
                    onTap: () {
                      Get.back();
                    },
                    icon: Icons.arrow_back_ios_rounded,
                  ),
                  Text('Task Status',
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w500,
                          color: theme.primaryColor)),
                  CustomApButton(
                      onTap: () {}, icon: Iconsax.arrow_swap_horizontal),
                ],
              ),

              SizedBox(height: height * 0.06),

              /// Circle Person Indicator
              CircularPercentIndicator(
                radius: 100.0,
                lineWidth: 25.0,
                animation: true,
                percent: 0.65,
                center: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("65%",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 28,
                              color: theme.primaryColor)),
                      const Text("Complete",
                          style: TextStyle(fontSize: 22, color: Colors.grey)),
                    ],
                  ),
                ),
                circularStrokeCap: CircularStrokeCap.round,
                progressColor: AColors.primaryLight,
                backgroundColor: AColors.yellow,
                footer: Padding(
                  padding: EdgeInsets.only(top: height * 0.04),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(width: width * 0.05),
                      CircleAvatar(
                          radius: 5, backgroundColor: AColors.greenLight),
                      SizedBox(width: width * 0.02),
                      Text(
                        'To Do',
                        style: TextStyle(color: theme.primaryColor),
                      ),
                      SizedBox(width: width * 0.13),
                      CircleAvatar(radius: 5, backgroundColor: AColors.yellow),
                      SizedBox(width: width * 0.02),
                      Text('In Progress',
                          style: TextStyle(color: theme.primaryColor)),
                      SizedBox(width: width * 0.11),
                      CircleAvatar(
                          radius: 5, backgroundColor: AColors.primaryLight),
                      SizedBox(width: width * 0.02),
                      Text('Completed',
                          style: TextStyle(color: theme.primaryColor)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text('Monthly',
                  style: TextStyle(color: theme.primaryColor, fontSize: 20)),
              SizedBox(
                height: height * 0.01,
              ),

              Container(
                margin: const EdgeInsets.only(bottom: 10, top: 10),
                padding: const EdgeInsets.all(15),
                // height: height *0.09,
                width: width,
                decoration: BoxDecoration(
                  border: Border.all(color: AColors.primaryLight),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Completed',
                            style: TextStyle(
                                color: theme.primaryColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 16)),
                        const Text('18 Task now . 18 Task Completed',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.more_horiz, color: Colors.grey))
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10, top: 10),
                padding: const EdgeInsets.all(15),
                // height: height * 0.09,
                width: width,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.withOpacity(0.3)),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('In Progress',
                            style: TextStyle(
                                color: theme.primaryColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 16)),
                        const Text('2 Task now . 1 started',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.more_horiz, color: Colors.grey))
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10, top: 10),
                padding: const EdgeInsets.all(15),
                // height: height * 0.09,
                width: width,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.withOpacity(0.3)),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Completed',
                            style: TextStyle(
                                color: theme.primaryColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 16)),
                        const Text('2 Task now . 1 Upcoming',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.more_horiz, color: Colors.grey))
                  ],
                ),
              ),
              // Expanded(
              //   child: ListView(
              //     children: [
              //       _buildTaskCategory("Completed", "18 Task now", "18 Task Completed", true),
              //         _buildTaskCategory("In Progress", "2 Task now", "1 started", false),
              //         _buildTaskCategory("To Do", "2 Task now", "1 Upcoming", false),              ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
    // Method to build the status indicator for To Do, In Progress, Completed
  }
}

// import 'package:flutter/material.dart';
// import 'package:percent_indicator/circular_percent_indicator.dart';
//
// class TaskStatusScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: Icon(Icons.arrow_back),
//         title: Text('Task Status'),
//         actions: [
//           IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             // Circular Progress Indicator
//
//             Expanded(
//               child: ListView(
//                 children: [
//                   _buildTaskCategory("Completed", "18 Task now", "18 Task Completed", true),
//                   _buildTaskCategory("In Progress", "2 Task now", "1 started", false),
//                   _buildTaskCategory("To Do", "2 Task now", "1 Upcoming", false),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//
//
//   // Method to build each task category (Completed, In Progress, To Do)
//   Widget _buildTaskCategory(String title, String taskNow, String taskDetails, bool isCompleted) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8.0),
//       child: Container(
//         padding: EdgeInsets.all(16.0),
//         decoration: BoxDecoration(
//           border: isCompleted ? Border.all(color: Colors.blueAccent) : null,
//           borderRadius: BorderRadius.circular(10.0),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
//             SizedBox(height: 5),
//             Text("$taskNow now • $taskDetails"),
//           ],
//         ),
//       ),
//     );
//   }

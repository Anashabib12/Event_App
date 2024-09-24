import 'package:event_app/Utils/Constant/colors.dart';
import 'package:event_app/commons/bottom_navigation.dart';
import 'package:event_app/widgets/custom_ap_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // List<String> text = ['Urgent','Running','ongoing'];
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final theme = Theme.of(context);

    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.06, vertical: height * 0.07),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CustomApButton(
                  onTap: () {
                    Get.back();
                  },
                  icon: Icons.arrow_back_ios_rounded,
                ),
                SizedBox(width: width * 0.2),
                Text('Add Task',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: theme.primaryColor,
                    ))
              ],
            ),
            SizedBox(height: height * 0.04),
            const Text('Task Name',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 17,
                )),
            SizedBox(height: height * 0.02),
            TextFormField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.only(top: height * 0.05, left: 15, right: 10),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                        const BorderSide(width: 2, color: Color(0xffE9F1FF))),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                        const BorderSide(width: 2, color: Color(0xffE9F1FF))),
              ),
            ),
            SizedBox(height: height * 0.02),
            const Text('Team Member',
                style: TextStyle(color: Colors.grey, fontSize: 17)),
            SizedBox(height: height * 0.02),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage('Assets/person/Ellipse@2x.png')),
                  SizedBox(width: width * 0.04),
                  const CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage('Assets/person/Ellipse (1).png')),
                  SizedBox(width: width * 0.04),
                  const CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage('Assets/person/Group 1000000746.png')),
                  SizedBox(width: width * 0.04),
                  const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('Assets/person/Ellipse.png')),
                  SizedBox(width: width * 0.02),
                  Container(
                    height: height * 0.07,
                    width: width * 0.13,
                    decoration: BoxDecoration(
                        border: Border.all(color: AColors.primaryLight),
                        shape: BoxShape.circle),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          color: AColors.primaryLight,
                          size: 28,
                        )),
                  )
                ],
              ),
            ),
            SizedBox(height: height * 0.001),
            Row(
              children: [
                SizedBox(width: width * 0.02),
                const Text('Jeny',
                    style: TextStyle(color: Colors.grey, fontSize: 17)),
                SizedBox(width: width * 0.09),
                const Text('Jafor',
                    style: TextStyle(color: Colors.grey, fontSize: 17)),
                SizedBox(width: width * 0.08),
                const Text('Avishek',
                    style: TextStyle(color: Colors.grey, fontSize: 17)),
                SizedBox(width: width * 0.05),
                const Text('mehrin',
                    style: TextStyle(color: Colors.grey, fontSize: 17)),
              ],
            ),
            SizedBox(height: height * 0.03),
            const Text('Date',
                style: TextStyle(color: Colors.grey, fontSize: 17)),
            SizedBox(height: height * 0.02),
            TextFormField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.only(top: height * 0.05, left: 15, right: 10),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                        const BorderSide(width: 2, color: Color(0xffE9F1FF))),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                        const BorderSide(width: 2, color: Color(0xffE9F1FF))),
              ),
            ),
            SizedBox(height: height * 0.03),
            Row(
              children: [
                const Text('Start Time',
                    style: TextStyle(color: Colors.grey, fontSize: 17)),
                SizedBox(width: width * 0.28),
                const Text('End Time',
                    style: TextStyle(color: Colors.grey, fontSize: 17)),
              ],
            ),
            SizedBox(height: height * 0.02),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(
                          top: height * 0.05, left: 15, right: 10),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                              width: 2, color: Color(0xffE9F1FF))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                              width: 2, color: Color(0xffE9F1FF))),
                    ),
                  ),
                ),
                SizedBox(width: width * 0.07),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(
                          top: height * 0.05, left: 15, right: 10),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                              width: 2, color: Color(0xffE9F1FF))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                              width: 2, color: Color(0xffE9F1FF))),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.03),
            const Text('Board',
                style: TextStyle(color: Colors.grey, fontSize: 17)),
            SizedBox(height: height * 0.01),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: height * 0.06,
                    width: width * 0.28,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey)),
                    child: const Center(
                        child: Text(
                      'Urgent',
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    )),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: height * 0.06,
                    width: width * 0.28,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey)),
                    child: const Center(
                        child: Text(
                      'Running',
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    )),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: height * 0.06,
                    width: width * 0.28,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey)),
                    child: const Center(
                        child: Text(
                      'ongoing',
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    )),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.03),
            Center(
              child: SizedBox(
                  width: width * 0.6,
                  height: height * 0.06,
                  child: ElevatedButton(
                      onPressed: () {
                        Get.to(const CustomBottomNavigation());
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: theme.iconTheme.color,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12))),
                      child: const Text('Save',
                          style:
                              TextStyle(color: Colors.white, fontSize: 17)))),
            )
          ],
        ),
      ),
    ));
  }
}

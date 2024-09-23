import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../commons/custom_container.dart';

class LangaugeScreen extends StatelessWidget {
  const LangaugeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: theme.scaffoldBackgroundColor,
        title: Text(
          'Language',
          style: TextStyle(color: theme.primaryColor),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Get.back();
          },
          color: theme.primaryColor,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            // Uncomment below lines if needed
            CustomContainer(
              text: "English",
              suffixIcon: Icons.circle,
            ),
            SizedBox(
              height: 20,
            ),
            CustomContainer(
              text: "Urdu",
              suffixIcon: Icons.circle_outlined,
            ),
            SizedBox(
              height: 20,
            ),
            CustomContainer(
              text: "Spanish",
              suffixIcon: Icons.circle_outlined,
            ),
            SizedBox(
              height: 20,
            ),
            CustomContainer(
              text: "French",
              suffixIcon: Icons.circle_outlined,
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:event_app/commons/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CustomModalSheet extends StatelessWidget {
  const CustomModalSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        color: theme.scaffoldBackgroundColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      height: height * 0.8,
      padding: EdgeInsets.only(
        top: height * 0.02,
        left: width * 0.04,
        right: width * 0.04,
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Divider at the top of the modal for visual cue to drag
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 40,
                child: Divider(
                  thickness: 3,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),

              // Custom Containers for modal actions
              CustomContainer(icon: Iconsax.edit, text: "Create Task"),
              SizedBox(height: 10),
              CustomContainer(icon: Iconsax.add_square, text: "Create Project"),
              SizedBox(height: 10),
              CustomContainer(icon: Icons.people_outline, text: "Create Team"),
              SizedBox(height: 10),
              CustomContainer(icon: Iconsax.clock, text: "Create Event"),
            ],
          ),
        ],
      ),
    );
  }
}

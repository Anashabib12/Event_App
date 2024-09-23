import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomContainer extends StatelessWidget {
  CustomContainer(
      {super.key, required this.icon, required this.text, this.onTap});

  var icon;
  String text;
  var onTap;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        onTap;
      },
      child: Container(
          height: height * 0.1,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(children: [
            Icon(
              icon,
              color: theme.primaryColor,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              text,
              style: TextStyle(color: theme.primaryColor),
            )
          ])),
    );
  }
}

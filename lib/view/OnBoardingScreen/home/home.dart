import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Screen',
          style: TextStyle(color: theme.primaryColor),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: theme.scaffoldBackgroundColor,
      ),
    );
  }
}

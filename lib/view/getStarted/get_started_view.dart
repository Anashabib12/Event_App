import 'package:event_app/Utils/Constant/image_strings.dart';
import 'package:flutter/material.dart';

import '../../commons/custom_bottom_sheet.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: const Color(0xffA096FF),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
              height: 250,
              width: 375,
              child: Image.asset(
                getStartedBackground,
                fit: BoxFit.fill,
              )),
          const CustomBottomSheet(),
        ]),
      ),
    );
  }
}

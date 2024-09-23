import 'package:event_app/view/OnBoardingScreen/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    final theme = Theme.of(context);
    var width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        color: theme.scaffoldBackgroundColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      height: 433,
      padding: EdgeInsets.only(
          top: height * 0.02, left: width * 0.04, right: width * 0.04),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Taskcy',
                style: TextStyle(
                    color: theme.primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: height * 0.07),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Building Better \nWorkplaces",
                style: TextStyle(
                    fontSize: 37,
                    fontWeight: FontWeight.bold,
                    color: theme.iconTheme.color),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                  "Create a unique emotional story that \ndescribes better than words",
                  style: TextStyle(
                      fontSize: 14,
                      color: theme.primaryColor.withOpacity(0.3))),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Get.to(const OnBoardingScreen());
                },
                child: Container(
                    height: 60,
                    width: 200,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                        color: theme.iconTheme.color,
                        borderRadius: BorderRadius.circular(16)),
                    child: const Center(
                      child: Text("Get Started",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    )),
              )
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:event_app/Utils/Constant/colors.dart';
import 'package:event_app/view/OnBoardingScreen/home/home.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController controller = PageController();
  bool isLastPage = false;
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return  Scaffold(
      appBar: AppBar(),
      body: PageView(
        controller: controller,
        onPageChanged: (index) {
          setState(() {
            isLastPage = index == 2;
          });
        },
        children: [
          /// OnBoarding Screen #1
          Stack(
            children: [
              /// BackGround Circle
              Image.asset('Assets/onBoarding/Circle.png'),
              /// top image 1
              Positioned(
                top: height * 0.04,
                right: width * 0.15,child: Image.asset('Assets/onBoarding/Image 3 (3).png')),
              /// top image 2
              Positioned(
                  top: height * 0.18,
                  left: width * 0.07,child: Image.asset('Assets/onBoarding/Image 2 (1).png')),
              /// top image 3
              Positioned(
                  top: height * 0.27,
                  right: width * 0.07,child: Image.asset('Assets/onBoarding/Image 1 (2).png')),

              Positioned(
                top: height * 0.53,
                left: width * 0.07,
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Task Management',style: TextStyle(fontSize: 20,color: AColors.primaryLight,fontWeight: FontWeight.w500)),
                    const Text("Let's create a",style: TextStyle(fontSize: 33)),
                     Row(
                      children: [
                        Text('space',style: TextStyle(fontSize: 35,fontWeight: FontWeight.w600,color: AColors.primaryLight),),
                        SizedBox(width: width * 0.03),
                        const Text('for your',style: TextStyle(fontSize: 33,fontWeight: FontWeight.w400)),
                      ],
                    ),
                    const Text('workflows.',style: TextStyle(fontSize: 33,fontWeight: FontWeight.w400)),


                  ],
                ),
              )
            ],
          ),

          /// OnBoarding Screen #2
          Stack(
            children: [
              /// BackGround Circle
              Image.asset('Assets/onBoarding/Circle.png'),

              /// top image 1
              Positioned(
                  top: height * 0.06,
                  left: width * 0.04,child: Image.asset('Assets/onBoarding/OnBoarding2/Image 1 (1).png')),
              /// top image 2
              Positioned(
                  top: height * 0.16,
                  right: width * 0.04,child: Image.asset('Assets/onBoarding/OnBoarding2/Image box 2.png')),
              /// top image 2
              Positioned(
                  top: height * 0.09,
                  left: width * 0.07,child: Image.asset('Assets/onBoarding/OnBoarding2/Image box 3.png')),

              Positioned(
                top: height * 0.53,
                left: width * 0.07,
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Task Management',style: TextStyle(fontSize: 20,color: AColors.primaryLight,fontWeight: FontWeight.w500)),
                    const Text("Work more",style: TextStyle(fontSize: 33)),
                    Row(
                      children: [
                        Text('Structured',style: TextStyle(fontSize: 35,fontWeight: FontWeight.w600,color: AColors.primaryLight),),
                        SizedBox(width: width * 0.03),
                        const Text('and',style: TextStyle(fontSize: 33,fontWeight: FontWeight.w400)),
                      ],
                    ),
                    const Text('Organized 👌',style: TextStyle(fontSize: 33,fontWeight: FontWeight.w400)),


                  ],
                ),
              )
            ],
          ),

          /// OnBoarding Screen #3

          Stack(
            children: [
              /// BackGround Circle
              Image.asset('Assets/onBoarding/Circle.png'),
              /// top image 1
              Positioned(
                  top: height * 0.04,
                  right: width * 0.15,child: Image.asset('Assets/onBoarding/OnBoarding3/Image 1.png')),
              /// top image 2
              Positioned(
                  top: height * 0.02,
                  left: width * 0.03,child: Image.asset('Assets/onBoarding/OnBoarding3/Image 3.png')),
              /// top image 3
              Positioned(
                  top: height * 0.17,
                  right: width * 0.05,child: Image.asset('Assets/onBoarding/OnBoarding3/Image 2.png')),

              Positioned(
                top: height * 0.53,
                left: width * 0.07,
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Task Management',style: TextStyle(fontSize: 20,color: AColors.primaryLight,fontWeight: FontWeight.w500)),
                    const Text("Manage your",style: TextStyle(fontSize: 33)),
                    Row(
                      children: [
                        Text('Tasks',style: TextStyle(fontSize: 35,fontWeight: FontWeight.w600,color: AColors.primaryLight),),
                        SizedBox(width: width * 0.03),
                        const Text('quickly for',style: TextStyle(fontSize: 33,fontWeight: FontWeight.w400)),
                      ],
                    ),
                    const Text('Results✌',style: TextStyle(fontSize: 33,fontWeight: FontWeight.w400)),


                  ],
                ),
              )
            ],
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: height * 0.16,
        child: Stack(
          // clipBehavior: Clip.none,
          children: [
            Positioned(
              top: height *0.01,
              left: width * 0.07,
              child: SmoothPageIndicator(
                count: 3,
                controller: controller,
                effect: ExpandingDotsEffect(
                  radius: 25,
                  dotHeight: 8,
                  dotWidth: 10,
                  activeDotColor: AColors.primaryLight,
                  dotColor: Colors.grey.withOpacity(0.4),
                ),
              ),
            ),
            // Wrap "Skip" and Arrow button in a Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed:  () => controller.jumpToPage(2),
                  child: const Text('Skip',style: TextStyle(color: Colors.black)),
                ),
                Stack(
                  // clipBehavior: Clip.none,
                  children: [
                    Image.asset('Assets/onBoarding/Rectangle 5904.png',),
                    Positioned(
                      bottom: 25,
                      left: width * 0.06,
                      child: IconButton(
                        onPressed: () {
                          if (isLastPage) {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (_) => const HomeScreen()));
                          } else {
                            controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOut,
                            );
                          }
                        },
                        icon: const Icon(Icons.arrow_forward, color: Colors.white, size: 26),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      )

    );
  }
}


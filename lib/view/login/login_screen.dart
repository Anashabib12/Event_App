import 'package:event_app/Utils/Constant/colors.dart';
import 'package:event_app/commons/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/back_arrow.dart';
import '../signup/signup_screen.dart';
  class LoginScreen extends StatelessWidget {
    const LoginScreen({super.key});

    @override
    Widget build(BuildContext context) {
      final theme = Theme.of(context);
      final height = MediaQuery.of(context).size.height;
      final width = MediaQuery.of(context).size.width;
      return  Scaffold(

        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: width * 0.05,vertical:  height * 0.07),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const BackArrow(),
                  Text('Sign in',style: TextStyle(fontSize: 20,color: theme.primaryColor,fontWeight: FontWeight.w500)),
                  const Image(image: AssetImage('Assets/logos/Ellipse (8).png'))
                ],
              ),
               SizedBox(height: height * 0.04),
               Text('Welcome back',style: TextStyle(fontSize: 28,fontWeight: FontWeight.w600,color: theme.primaryColor),),
              SizedBox(height: height * 0.02),
              Text('Please Inter your email address\nand password for Login',style: TextStyle(color: AColors.grey)),

              SizedBox(height: height * 0.04),
              /// email
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email_outlined,color: Colors.grey) ,
                  hintText: 'Enter your mail',
                  hintStyle: const TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(width: 2, color: Color(0xffE9F1FF))),
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(width: 2, color: Color(0xffE9F1FF))),
                ),
              ),
              SizedBox(height: height * 0.04),
              /// Password
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock_clock_outlined,color: Colors.grey) ,
                  hintText: 'Enter your password',
                  hintStyle: const TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(width: 2, color: Color(0xffE9F1FF))),
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(width: 2, color: Color(0xffE9F1FF))),
                ),
              ),
              SizedBox(height: height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Forgot Password?',style: TextStyle(color: theme.primaryColor)),
                ],
              ),
              SizedBox(height: height * 0.04),

              SizedBox(
                  height:  height * 0.05,
                  width:  width,
                  child: ElevatedButton(onPressed: (){
                    Get.offAll(() => const CustomBottomNavigation());

                  }, style: ElevatedButton.styleFrom(backgroundColor: AColors.primaryLight,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                      child: const Text('Sign In',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400)))),
              SizedBox(height: height * 0.04),
              const Center(child: Text('Signin with',style: TextStyle(color: Color(0xff868D95)))),

              SizedBox(height: height * 0.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin:  EdgeInsets.only(right: width * 0.06),
                    height: height * 0.06,
                    width: width * 0.12,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.withOpacity(0.3),width: 1.5)
                    ),
                    child: const Image(image: AssetImage('Assets/social Logo/Apple_logo.webp')),
                  ),
                  Container(
                    height: height * 0.06,
                    width: width * 0.12,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey.withOpacity(0.3),width: 1.5)
                    ),
                    child: const Image(image: AssetImage('Assets/social Logo/google.jpg')),
                  ),
                ],
              ),
              SizedBox(height: height * 0.04),
              Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Not Registrar Yet?',style: TextStyle(color: Color(0xff868D95))),
                  TextButton(onPressed: (){
                    Get.to(() => const SignUpScreen());

                  }, child:  Text('Sign Up',style: TextStyle(color: AColors.primaryLight)))
                ],
              ),





            ],
          ),
        ),
      );
    }
  }


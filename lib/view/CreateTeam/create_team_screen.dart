import 'package:event_app/Utils/Constant/colors.dart';
import 'package:flutter/material.dart';
class CrateTeamScreen extends StatelessWidget {
  const CrateTeamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // List<String> text = ['Urgent','Running','ongoing'];
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return  Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: width * 0.06,vertical: height * 0.07),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(radius: 25,backgroundColor: const Color(0xffE9F1FF),
                        child: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back_ios,size: 22))),
                    SizedBox(width: width*0.2),
                    const Text('Create Team',style: TextStyle(fontSize: 23,fontWeight: FontWeight.w500))
                  ],
                ),
                SizedBox(height: height * 0.04),

                Center(
                  child: Column(
                    children: [
                      Image.asset('Assets/logos/teamLogo.png'),
                      SizedBox(height: height * 0.01),
                      const Text('Upload logo file',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
                      SizedBox(height: height * 0.001),
                      const Text('Your  logo will publish always',style: TextStyle(color: Colors.grey,fontSize: 15)),


                    ],
                  ),
                ),
                SizedBox(height: height * 0.03),
                const Text('Team Name',style: TextStyle(color: Colors.grey,fontSize: 17)),
                SizedBox(height: height * 0.01),
                TextFormField(
                  decoration: InputDecoration(
                    contentPadding:   EdgeInsets.only(top: height * 0.05,left: 15,right: 10),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:  const BorderSide(width: 2,color: Color(0xffE9F1FF))
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:  const BorderSide(width: 2,color: Color(0xffE9F1FF))
                    ),
                  ),
                ),
                SizedBox(height: height * 0.02),
                const Text('Team Member',style: TextStyle(color: Colors.grey,fontSize: 17)),
                SizedBox(height: height * 0.04),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const CircleAvatar(radius: 30,backgroundImage: AssetImage('Assets/person/Ellipse@2x.png')),
                      SizedBox(width: width * 0.04),
                      const CircleAvatar(radius: 30,backgroundImage: AssetImage('Assets/person/Ellipse (1).png')),
                      SizedBox(width: width * 0.04),
                      const CircleAvatar(radius: 30,backgroundImage: AssetImage('Assets/person/Group 1000000746.png')),
                      SizedBox(width: width * 0.04),
                      const CircleAvatar(radius: 30,backgroundImage: AssetImage('Assets/person/Ellipse.png')),
                      SizedBox(width: width * 0.02),

                      Container(
                        height: height * 0.07,
                        width: width *0.13,
                        decoration:  BoxDecoration(
                            border: Border.all(color: AColors.primaryLight),shape: BoxShape.circle),
                        child: IconButton(onPressed: (){}, icon: Icon(Icons.add,color: AColors.primaryLight,size: 28,)),
                      )
                    ],
                  ),
                ),
                SizedBox(height: height * 0.001),
                Row(
                  children: [
                    SizedBox(width: width* 0.02),
                    const Text('Jeny',style: TextStyle(color: Colors.grey,fontSize: 17)),
                    SizedBox(width: width * 0.09),
                    const Text('Jafor',style: TextStyle(color: Colors.grey,fontSize: 17)),
                    SizedBox(width: width * 0.08),
                    const Text('Avishek',style: TextStyle(color: Colors.grey,fontSize: 17)),
                    SizedBox(width: width * 0.05),
                    const Text('mehrin',style: TextStyle(color: Colors.grey,fontSize: 17)),
                  ],
                ),
                SizedBox(height: height * 0.03),
                const Divider(),

                SizedBox(height: height * 0.03),
                const Text('Type',style: TextStyle(color: Colors.grey,fontSize: 17)),
                SizedBox(height: height * 0.01),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        height: height *0.06,
                        width:  width *0.28,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey)
                        ),
                        child: const Center(child: Text('Private',style: TextStyle(fontSize: 19,fontWeight: FontWeight.w500,color: Colors.grey),)),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        height: height *0.06,
                        width:  width *0.28,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey)
                        ),
                        child: const Center(child: Text('Public',style: TextStyle(fontSize: 19,fontWeight: FontWeight.w500,color: Colors.grey),)),
                      ),  Container(
                        margin: const EdgeInsets.only(right: 10),
                        height: height *0.06,
                        width:  width *0.28,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey)
                        ),
                        child: const Center(child: Text('Secret',style: TextStyle(fontSize: 19,fontWeight: FontWeight.w500,color: Colors.grey),)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.03),
                Center(
                  child: SizedBox(
                      width: width * 0.6,
                      height: height *0.06,
                      child: ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(backgroundColor: AColors.primaryLight,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                          child: const Text('Create Team',style: TextStyle(color: Colors.white,fontSize: 17)))),
                )
              ],
            ),
          ),
        )
    );
  }
}

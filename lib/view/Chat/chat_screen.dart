import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final theme = Theme.of(context);
    return  Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: width * 0.04,vertical: height * 0.06),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(radius: 25,backgroundColor: const Color(0xffE9F1FF),
                      child: IconButton(
                          onPressed: () {},
                          icon:  Icon(Icons.arrow_back_ios,size: 22, color: theme.primaryColor))),
                  Text('Chat',style: TextStyle(fontSize: 23,fontWeight: FontWeight.w500,color: theme.primaryColor)),
                  CircleAvatar(radius: 25,backgroundColor: const Color(0xffE9F1FF),child:IconButton(onPressed: (){},
                      icon: Icon(Icons.add,color: theme.primaryColor))),
                ],
              ),
              SizedBox(height:  height * 0.05),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search,color: Colors.grey) ,
                  hintText: 'Search',
                  hintStyle: const TextStyle(color: Colors.grey),
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(width: 2, color: Color(0xffE9F1FF))),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(width: 2, color: Color(0xffE9F1FF))),
                ),
              ),
              SizedBox(height: height * 0.04),
              ListTile(
                leading: Image.asset('Assets/ChatPerson/Ellipse@2x.png'),
                title:  Text('Jenny Alexander',style: TextStyle(color: theme.primaryColor)),
                subtitle: const Text('Active now',style: TextStyle(color: Colors.grey)),
                trailing: IconButton(onPressed: (){}, icon:  Icon(Icons.camera_alt_outlined,color: theme.primaryColor)),
              ),
              Divider(color: Colors.grey.withOpacity(0.4)),
              ListTile(
                leading: Image.asset('Assets/ChatPerson/Group 1000000814.png'),
                title:  Text('Jenny Alexander',style: TextStyle(color: theme.primaryColor)),
                subtitle: const Text('Active now',style: TextStyle(color: Colors.grey)),
                trailing: IconButton(onPressed: (){}, icon:  Icon(Icons.camera_alt_outlined,color: theme.primaryColor)),
              ),
              Divider(color: Colors.grey.withOpacity(0.4)),
              ListTile(
                leading: Image.asset('Assets/ChatPerson/Ellipse (5).png'),
                title:  Text('Jenny Alexander',style: TextStyle(color: theme.primaryColor)),
                subtitle: const Text('Active now',style: TextStyle(color: Colors.grey)),
                trailing: IconButton(onPressed: (){}, icon:  Icon(Icons.camera_alt_outlined,color: theme.primaryColor)),
              ),
              Divider(color: Colors.grey.withOpacity(0.4)),
              ListTile(
                leading: Image.asset('Assets/ChatPerson/Ellipse (4).png'),
                title:  Text('Jenny Alexander',style: TextStyle(color: theme.primaryColor)),
                subtitle: const Text('Active now',style: TextStyle(color: Colors.grey)),
                trailing: IconButton(onPressed: (){}, icon:  Icon(Icons.camera_alt_outlined,color: theme.primaryColor)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

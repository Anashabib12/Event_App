import 'package:event_app/Utils/Constant/colors.dart';
import 'package:event_app/commons/custom_modal_sheet.dart';
import 'package:event_app/view/Project%20Screen/project_screen.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../Utils/Constant/image_strings.dart';
import '../view/Chat/chat_screen.dart';
import '../view/HomeScreen/home_screen.dart';
import '../view/ProfileScreen/profile_screen.dart';

// class BottomNavigationMenu extends StatefulWidget {
//   const BottomNavigationMenu({super.key});
//
//
//   @override
//   createState() => _MyAppState();
// }
//
// class _MyAppState extends State<BottomNavigationMenu> {
//   int _currentIndex = 0;
//
//   final listChildren = [ const HomeScreen(),const ProjectScreen(),const Placeholder(),const CustomModalSheet(),const ProfileScreen()];
//
//   void onTabTapped(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: listChildren[_currentIndex],
//         bottomNavigationBar: SizedBox(
//           height: 85,
//           child: BottomNavigationBar(
//             /// esko jab ap remove kro ge to icons oper nichy hona shore ho jai gy
//               type: BottomNavigationBarType.fixed, // Add this line
//               selectedItemColor: Colors.blueAccent.shade700,
//               unselectedItemColor: Colors.grey,
//               iconSize: 30,
//               selectedLabelStyle: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
//               unselectedLabelStyle: const TextStyle(
//                   fontWeight: FontWeight.w500,fontSize: 12,color: Colors.black),
//               onTap: onTabTapped,   // new
//               currentIndex: _currentIndex, // new
//               items: const [
//                 /// Home
//                 BottomNavigationBarItem(icon: Icon(Iconsax.home),label: '',activeIcon: Icon(Iconsax.home_15)),
//
//                 /// project
//                 BottomNavigationBarItem(icon:  Icon(Iconsax.folder_minus),label: '',activeIcon: Icon(Iconsax.folder_25),),
//
//                 /// project
//                 BottomNavigationBarItem( icon: Icon(Iconsax.add,size: 30),label: ''),
//                 BottomNavigationBarItem( icon: Icon(Iconsax.message,size: 30),label: '',activeIcon: Icon(Iconsax.message5)),
//
//                 /// Profile
//                 BottomNavigationBarItem(icon: Icon(Icons.person_outline),label: '',activeIcon: Icon(Icons.person)),
//               ]
//           ),
//         )
//     );
//   }
//   void _onDestinationSelected(BuildContext context, int index) {
//     if (index == 2) {
//       // Show modal sheet if the middle icon (addIcon) is selected
//       showModalBottomSheet(
//         context: context,
//         builder: (context) =>
//             const CustomModalSheet(), // Your custom modal sheet
//       );
//     } else {
//       setState(() {
//         _currentIndex = index;
//       });
//     }
//   }
// }




/// Bottom Navigation Icons

// Image.asset('assets/Icons/btn_home.png',height: 30,width: 30)

// Image.asset('assets/Icons/btn_shopping_cart.png',height: 30,width: 30),

// Image.asset('assets/Icons/btn_user_icon.png',height: 30,width: 30)


// Consumer<FavouriteItem>(builder: (context, value, child)
// => Stack(
// children: [
//
// IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_bag_outlined,size: 27,color: Colors.white)),
// Positioned(
// top: 15,
// right: 5,
// child: CircleAvatar(radius: 8,backgroundColor: TColors.primary,
// child: Text(value.selectedFavourites.length.toString(),
// style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.white)))
// ),
//
// ],
// ),)



// import 'package:event_app/commons/custom_modal_sheet.dart';
// import 'package:event_app/view/Chat/chat_screen.dart';
// import 'package:event_app/view/HomeScreen/home_screen.dart';
// import 'package:event_app/view/ProfileScreen/profile_screen.dart';
// import 'package:flutter/material.dart';
//
// import '../Utils/Constant/image_strings.dart';
// import '../view/Project Screen/project_screen.dart';
//
class CustomBottomNavigation extends StatefulWidget {
  const CustomBottomNavigation({super.key});

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  int _currentPageIndex = 0;

  final _screens = [
    const HomeScreen(),const ProjectScreen(),const Placeholder(),ChatScreen(),const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: _screens[_currentPageIndex],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          backgroundColor: theme.scaffoldBackgroundColor,
        ),
        child: NavigationBar(
          selectedIndex: _currentPageIndex,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          indicatorColor: Colors.transparent,
          onDestinationSelected: (index) =>
              _onDestinationSelected(context, index),
          destinations: [
            ///Home icon
            NavigationDestination(
              icon:    Icon(Iconsax.home,size: 28,color: theme.primaryColor.withOpacity(0.5))
              ,selectedIcon: Icon(Iconsax.home_15,color: theme.iconTheme.color,size: 28,),label: ''),

            ///Folder icon
            NavigationDestination(
              icon:  Icon(Iconsax.folder_minus,color: theme.primaryColor.withOpacity(0.5)),
                selectedIcon: Icon(Iconsax.folder_25,color: theme.iconTheme.color,), label: ''),

            ///Add icon
            NavigationDestination(icon: CircleAvatar(radius: 28,backgroundColor: theme.iconTheme.color,

                child: const Icon(Icons.add,size: 30,color: Colors.white)),
                selectedIcon: CircleAvatar(radius: 28,backgroundColor:theme.iconTheme.color,

                child: const Icon(Icons.add,size: 30,color: Colors.white)),label: ''),
            /// Message icon
            NavigationDestination(
                icon:  Icon(Iconsax.message,color: theme.primaryColor.withOpacity(0.5)),selectedIcon:  Icon(Iconsax.message5,color: theme.iconTheme.color,), label: ''),
            ///Profile icon
            NavigationDestination(icon:  Icon(Icons.person_outline,size: 28,color: theme.primaryColor.withOpacity(0.5)),
                selectedIcon:  Icon(Icons.person,color: theme.iconTheme.color,size: 28,), label: ''),


          ],
        ),
      ),
    );
  }

  void _onDestinationSelected(BuildContext context, int index) {
    if (index == 2) {
      // Show modal sheet if the middle icon (addIcon) is selected
      showModalBottomSheet(
        context: context,
        builder: (context) =>
            const CustomModalSheet(), // Your custom modal sheet
      );
    } else {
      setState(() {
        _currentPageIndex = index;
      });
    }
  }
}

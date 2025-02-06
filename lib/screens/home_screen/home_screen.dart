import 'package:flutter/material.dart';
import 'package:unviersty_system/core/colors/app_colors.dart';
import 'package:unviersty_system/core/icons/app_icons.dart';
import 'package:unviersty_system/on_boarding/on_boarding_screen.dart';
import 'package:unviersty_system/screens/courses_screen/courses_screen.dart';
import 'package:unviersty_system/screens/news_screen/news_screen.dart';
import 'package:unviersty_system/screens/profile_screen/profile_screen.dart';

import '../../core/widget/custom_bottom_nav_bar.dart';
import '../home_screen2/home_screen2.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<Widget> screens = [
    const HomeScreen2(),
    const CoursesScreen(),
    const NewsScreen(),
    const ProfileScreen(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: screens[selectedIndex],
      bottomNavigationBar:
      BottomNavigationBar(
          selectedLabelStyle: const TextStyle(fontSize: 12,fontFamily: "Janna",fontWeight: FontWeight.bold),
          onTap: (index) {
            setState(() {

              selectedIndex = index;
            });
          },
          currentIndex: selectedIndex,
          backgroundColor: AppColors.white,
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: const IconThemeData(
            color: AppColors.orange,
          ),
          unselectedIconTheme: const IconThemeData(
            color: AppColors.grey,
          ),
          selectedItemColor: AppColors.orange,
          unselectedItemColor: AppColors.white,
          showUnselectedLabels: false,
          items:[
            BottomNavigationBarItem(
              icon: CustomBottomNavBar(iconPath: AppIcons.homeIcon,
                isSelected: selectedIndex == 0,),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: CustomBottomNavBar(iconPath: AppIcons.bookIcon,
                isSelected: selectedIndex == 1,),
              label: "Courses",
            ),
            BottomNavigationBarItem(
              icon: CustomBottomNavBar(iconPath: AppIcons.newsIcon,
                isSelected: selectedIndex == 2,),
              label: "News",
            ),
            BottomNavigationBarItem(
              icon: CustomBottomNavBar(iconPath: AppIcons.userIcon,
                isSelected: selectedIndex == 3,),
              label: "Profile",
            ),
          ]
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:unviersty_system/screens/courses_detalise_screen/quizzes_screen.dart';

import '../../core/colors/app_colors.dart';
import '../../core/icons/app_icons.dart';
import '../../core/widget/custom_bottom_nav_bar.dart';
import 'announcements_screen.dart';
import 'assignments_screen.dart';
import 'materials_screen.dart';

class CoursesDetaliseScreen extends StatefulWidget {
  @override
  State<CoursesDetaliseScreen> createState() => _CoursesDetaliseScreenState();
}

class _CoursesDetaliseScreenState extends State<CoursesDetaliseScreen> {


  int selectedIndex = 0;
  List<Widget> screensCourses = [
    const MaterialsScreen(),
    const AssignmentsScreen(),
    const QuizzesScreen(),
    const AnnouncementsScreen(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Advanced Database"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: screensCourses[selectedIndex],
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
          unselectedItemColor: AppColors.darkGrey,
          showUnselectedLabels: true,
          items:[
            BottomNavigationBarItem(
              icon: CustomBottomNavBar(iconPath: AppIcons.pdfIcon,
                isSelected: selectedIndex == 0,),
              label: "Materials",
            ),
            BottomNavigationBarItem(
              icon: CustomBottomNavBar(iconPath: AppIcons.assignBookIcon,
                isSelected: selectedIndex == 1,),
              label: "Assignments",
            ),
            BottomNavigationBarItem(
              icon: CustomBottomNavBar(iconPath: AppIcons.quizIcon,
                isSelected: selectedIndex == 2,),
              label: "Quizzes",
            ),
            BottomNavigationBarItem(
              icon: CustomBottomNavBar(iconPath: AppIcons.userIcon,
                isSelected: selectedIndex == 3,),
              label: "Announcements",
            ),
          ]
      ),

    );
  }
}




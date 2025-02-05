
import 'package:flutter/material.dart';
import 'package:unviersty_system/core/routes/page_routes_name.dart';
import 'package:unviersty_system/screens/change_password_screen/change_password_screen.dart';
import 'package:unviersty_system/screens/courses_detalise_screen/announcements_screen.dart';
import 'package:unviersty_system/screens/courses_detalise_screen/materials_screen.dart';
import 'package:unviersty_system/screens/courses_detalise_screen/quizzes_screen.dart';
import 'package:unviersty_system/screens/language_selection_screen/language_selection_screen.dart';
import 'package:unviersty_system/screens/news_screen/news_screen.dart';
import 'package:unviersty_system/screens/personal_information_screen/personal_information_screen.dart';
import 'package:unviersty_system/screens/profile_screen/profile_screen.dart';

import '../../screens/courses_detalise_screen/assignments_screen.dart';
import '../../screens/courses_detalise_screen/courses_detalise_screen.dart';
import '../../screens/courses_screen/courses_screen.dart';
import '../../screens/home_screen/home_screen.dart';
import '../../screens/home_screen2/home_screen2.dart';
import '../../screens/login_screen/login_screen.dart';
import '../../screens/notfication_screen/notification_screen.dart';
import '../../screens/settings_screen/settings_screen.dart';
import '../../screens/splash_screen/splash_screen.dart';

abstract class AppRouts{
  static Route<dynamic> onGenratedRoute(RouteSettings settings){
    switch (settings.name){

      case PageRoutesName.initial: {
        return MaterialPageRoute(builder: (context) => const SplashScreen(),
          settings: settings,
        );
      }
      case PageRoutesName.loginScreen: {
        return MaterialPageRoute(builder: (context) => const LoginScreen(),
          settings: settings,
        );
      }
      case PageRoutesName.homeScreen: {
        return MaterialPageRoute(builder: (context) => const HomeScreen(),
          settings: settings,
        );
      }

      case PageRoutesName.homeScreen2: {
        return MaterialPageRoute(builder: (context) => const HomeScreen2(),
          settings: settings,
        );
      }
      case PageRoutesName.coursesScreen: {
        return MaterialPageRoute(builder: (context) => const CoursesScreen(),
          settings: settings,
        );
      }
      case PageRoutesName.newsScreen: {
        return MaterialPageRoute(builder: (context) => const NewsScreen(),
          settings: settings,
        );
      }
      case PageRoutesName.profileScreen: {
        return MaterialPageRoute(builder: (context) => const ProfileScreen(),
          settings: settings,
        );
      }
      case PageRoutesName.notificationScreen: {
        return MaterialPageRoute(builder: (context) => const NotificationScreen(),
          settings: settings,
        );
      }
      case PageRoutesName.settingsScreen:
        {
          return MaterialPageRoute(builder: (context) => const SettingsScreen(),
            settings: settings,
          );
        }
      case PageRoutesName.changePasswordScreen: {
        return MaterialPageRoute(builder: (context) => const ChangePasswordScreen(),
          settings: settings,
        );
      }
      case PageRoutesName.personalInformationScreen: {
        return MaterialPageRoute(builder: (context) => const PersonalInformationScreen(),
          settings: settings,
        );
      }
      case PageRoutesName.languageSelectionScreen: {
        return MaterialPageRoute(builder: (context) =>  LanguageSelectionScreen(),
          settings: settings,
        );
      }
      case PageRoutesName.materialsScreen: {
        return MaterialPageRoute(builder: (context) =>  MaterialsScreen(),
          settings: settings,
        );
      }
      case PageRoutesName.assignmentsScreen: {
        return MaterialPageRoute(builder: (context) =>  AssignmentsScreen(),
          settings: settings,
        );
      }
      case PageRoutesName.quizzesScreen: {
        return MaterialPageRoute(builder: (context) =>  QuizzesScreen(),
          settings: settings,
        );
      }
      case PageRoutesName.announcementsScreen: {
        return MaterialPageRoute(builder: (context) =>  AnnouncementsScreen(),
          settings: settings,
        );
      }
      case PageRoutesName.coursesDetaliseScreen: {
        return MaterialPageRoute(builder: (context) =>  CoursesDetaliseScreen(),
          settings: settings,
        );
      }
      default: {
        return MaterialPageRoute(builder: (context) => const SplashScreen(),
          settings: settings,
        );
      }
    }
  }
}

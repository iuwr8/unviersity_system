import 'package:flutter/material.dart';
import 'package:unviersty_system/core/colors/app_colors.dart';
import 'package:unviersty_system/core/images/app_images.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          fontFamily: "Janna",
        ),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(AppImages.notificationEmpty,width: 400,height: 300,),
          SizedBox(
            height: 8,
          ),
          Text(
            "There are no notifications",style: TextStyle(
            fontFamily: "Janna",
            color: AppColors.black,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
          ),
          Text(
            "There Is No Notifications To Show Right Now",style: TextStyle(
            fontFamily: "Janna",
            color: AppColors.grey,
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
          ),
        ],
      ),
    );
  }
}

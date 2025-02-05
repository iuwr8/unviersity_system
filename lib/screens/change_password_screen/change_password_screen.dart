import 'package:flutter/material.dart';
import 'package:unviersty_system/core/colors/app_colors.dart';
import 'package:unviersty_system/core/widget/custom_text_field.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Change password",style: TextStyle(
          fontFamily: "Janna",
          fontWeight: FontWeight.w600,
          fontSize: 20,
          color: AppColors.black,
        ),),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Current Password",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Janna",
                    color: AppColors.black,
                  ),),
                  SizedBox(
                    height: 8,
                  ),
                  CustomTextField(
                    isPassword: true,
                    maxLines: 1,
                    hint: "Please enter your password",
                    hintColor: AppColors.darkGrey,
        
        
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("New Password",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Janna",
                    color: AppColors.black,
                  ),),
                  SizedBox(
                    height: 8,
                  ),
                  CustomTextField(
                    isPassword: true,
                    maxLines: 1,
                    hint: "Please enter your New password",
                    hintColor: AppColors.darkGrey,
        
        
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Retype Password",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Janna",
                      color: AppColors.black,
                    ),),
                  SizedBox(
                    height: 8,
                  ),
                  CustomTextField(
                    isPassword: true,
                    maxLines: 1,
                    hint: "Please Retype your New password",
                    hintColor: AppColors.darkGrey,
        
        
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

    );
  }
}

import 'package:flutter/material.dart';

import '../../core/colors/app_colors.dart';
import '../../core/widget/custom_text_field.dart';

class PersonalInformationScreen extends StatelessWidget {
  const PersonalInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Personal information",style: TextStyle(
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
                  Text("Full Name",
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
                    maxLines: 1,
                    label: "Abdullah Samir Hassan",
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
                  Text("Email",
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
                    maxLines: 1,
                    label: "abdullah_sm688@email.com",
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
                  Text("Phone Number",
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
                    keyboardType: TextInputType.phone,
                    label: "01501415603",
                    maxLines: 1,
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

import 'package:flutter/material.dart';
import 'package:unviersty_system/core/colors/app_colors.dart';

import '../../core/icons/app_icons.dart';
import '../../core/routes/page_routes_name.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text(
                      "Profile",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Janna",
                        color: AppColors.black,
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                            context, PageRoutesName.settingsScreen);
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: AppColors.lightGrey,
                            borderRadius: BorderRadius.circular(10)),
                        child:
                            const ImageIcon(AssetImage(AppIcons.settingsIcon)),
                      ),
                    ),
                  ],
                ),
                const CircleAvatar(
                  backgroundColor: AppColors.orange,
                  radius: 75,
                  child: Text(
                    "AM",
                    style: TextStyle(
                      fontFamily: "Janna",
                      fontWeight: FontWeight.w600,
                      fontSize: 36,
                      color: AppColors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  "Abdullah Samir Hassan",
                  style: TextStyle(
                    fontFamily: "Janna",
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: AppColors.black,
                  ),
                ),
                const Text(
                  "Student",
                  style: TextStyle(
                    fontFamily: "Janna",
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: AppColors.blue,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  padding: const EdgeInsets.all(12),
                  height: 166,
                  decoration: BoxDecoration(
                    color: AppColors.blue,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Student information",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Janna",
                          color: AppColors.orange,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Text(
                            "level:",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Janna",
                              color: AppColors.white,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "4th",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Janna",
                              color: AppColors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Text(
                            "Student ID",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Janna",
                              color: AppColors.white,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "212097",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Janna",
                              color: AppColors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Text(
                            "Department",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Janna",
                              color: AppColors.white,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "Computer science",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Janna",
                              color: AppColors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  padding: const EdgeInsets.all(12),
                  height: 234,
                  width: 358,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(width: 0.5, color: AppColors.grey)),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Personal Information",
                        style: TextStyle(
                          fontFamily: "Janna",
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: AppColors.blue,
                        ),
                      ),
                      Text(
                        "Name",
                        style: TextStyle(
                          fontFamily: "Janna",
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: AppColors.grey,
                        ),
                      ),
                      Text(
                        "Abdullah Samir Hassan",
                        style: TextStyle(
                          fontFamily: "Janna",
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: AppColors.black,
                        ),
                      ),
                      Text(
                        "Email",
                        style: TextStyle(
                          fontFamily: "Janna",
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: AppColors.grey,
                        ),
                      ),
                      Text(
                        "abdullah_sm688@email.com",
                        style: TextStyle(
                          fontFamily: "Janna",
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: AppColors.black,
                        ),
                      ),
                      Text(
                        "Mobile",
                        style: TextStyle(
                          fontFamily: "Janna",
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: AppColors.grey,
                        ),
                      ),
                      Text(
                        "01501415603",
                        style: TextStyle(
                          fontFamily: "Janna",
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: AppColors.black,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

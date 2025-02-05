import 'package:flutter/material.dart';
import 'package:unviersty_system/core/icons/app_icons.dart';
import 'package:unviersty_system/core/widget/courses_items.dart';
import 'package:unviersty_system/core/widget/custom_text_field.dart';

import '../../core/colors/app_colors.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 255,
              decoration: const BoxDecoration(
                color: AppColors.orange,
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(12))
              ),
              child: const SafeArea(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text("Courses",
                      style: TextStyle(
                        fontFamily: "Janna",
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                        color: AppColors.blue,
                      ),),
                      Text("Access your registered courses, materials, \nand assignments",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Janna",
                      ),),
                      SizedBox(
                        height: 24,
                      ),
                      CustomTextField(
                        textStyle: TextStyle(
                          fontFamily: "Janna",
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                        maxLines: 1,
                        hintColor: AppColors.grey,
                        hint: "Search",
                        prefixIcon: ImageIcon(AssetImage(AppIcons.searchIcon),size: 18,color: AppColors.blue,),
                      )

                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemBuilder: (context,index)=>
                const SizedBox(
                    height: 160,
                    width: 360,
                    child: CoursesItems()),
                separatorBuilder: (context,index)=> const SizedBox(
                  height: 16,
                ),
                itemCount: 15),
          ],
        ),
      ),
    );
  }
}

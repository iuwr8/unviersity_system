import 'package:flutter/material.dart';
import 'package:unviersty_system/core/colors/app_colors.dart';
import 'package:unviersty_system/core/icons/app_icons.dart';
import 'package:unviersty_system/core/images/app_images.dart';
import 'package:unviersty_system/core/routes/page_routes_name.dart';
import 'package:unviersty_system/core/widget/assignments_due.dart';

import '../../core/widget/courses_items.dart';
import '../../core/widget/posts_news.dart';

class HomeScreen2 extends StatelessWidget {
  const HomeScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    AppImages.splashLogo,
                    width: 80,
                    height: 80,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome Back @user! 👋",
                            style: TextStyle(
                              fontFamily: "Janna",
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: AppColors.blue,
                            ),
                          ),
                          Text(
                            "How Are You Today?",
                            style: TextStyle(
                              fontFamily: "Janna",
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.grey,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                              context, PageRoutesName.notificationScreen);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: AppColors.lightGrey,
                              borderRadius: BorderRadius.circular(10)),
                          child: const ImageIcon(AssetImage(AppIcons.notfiIcon)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "latest courses activities",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          fontFamily: "Janna",
                        ),
                      ),
                      const Spacer(),
                      TextButton(onPressed: (){
                        Navigator.pushNamed(context, PageRoutesName.coursesScreen);
                      }, child: const Text(
                        "See All",
                        style: TextStyle(
                          color: AppColors.grey,
                          fontFamily: "Janna",
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      )),

                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 535,

                    child: ListView.separated(
                        shrinkWrap: true,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        itemBuilder: (context,index)=>
                        const SizedBox(
                            height: 160,
                            width: 360,
                            child: CoursesItems()),
                        separatorBuilder: (context,index)=> const SizedBox(
                          height: 16,
                        ),
                        itemCount: 4),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Assignments Due",
                      style: TextStyle(
                        color: AppColors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Janna",
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 398,
                    width: double.infinity,
                    child: ListView.separated(
                        shrinkWrap: true,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        itemBuilder: (context,index)=>
                        const SizedBox(
                            height: 100,
                            width: double.infinity,
                            child: AssignmentsDue()),
                        separatorBuilder: (context,index)=> const SizedBox(
                        ),
                        itemCount: 4),
                  ),
                  Row(
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "latest News",
                          style: TextStyle(
                            color: AppColors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Janna",
                          ),
                        ),
                      ),
                      const Spacer(),
                      TextButton(onPressed: (){
                        Navigator.pushNamed(context, PageRoutesName.newsScreen);
                      },
                          child: const Text(
                        "See All",
                        style: TextStyle(
                          color: AppColors.grey,
                          fontFamily: "Janna",
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      )),
                    ],
                  ),
                  SizedBox(
                    height: 440,
                    width: double.infinity,
                    child: ListView.separated(
                        shrinkWrap: true,
                        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 12),
                        itemBuilder: (context,index)=>
                        const SizedBox(
                            height: 440,
                            width: double.infinity,
                            child: PostsNews()),
                        separatorBuilder: (context,index)=> const SizedBox(
                          height: 12,
                        ),
                        itemCount: 4),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

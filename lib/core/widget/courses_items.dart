import 'package:flutter/material.dart';
import 'package:unviersty_system/core/colors/app_colors.dart';
import 'package:unviersty_system/core/icons/app_icons.dart';

import '../images/app_images.dart';
import '../routes/page_routes_name.dart';

class CoursesItems extends StatelessWidget {
  const CoursesItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, PageRoutesName.coursesDetaliseScreen);
        },
        child: Center(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(
                      image: AssetImage(AppImages.bg),
                      fit: BoxFit.fitWidth,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 10.0, left: 10.0, right: 10.0, bottom: 45),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white.withOpacity(0.1),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Advanced Database",
                      style: TextStyle(
                        fontFamily: "Janna",
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                        color: AppColors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Text(
                      "Dr. Abdullah Samir",
                      style: TextStyle(
                        fontFamily: "Janna",
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: AppColors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          AppIcons.studIcon,
                          width: 24,
                          height: 24,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        const Text(
                          "200 Students",
                          style: TextStyle(
                            fontFamily: "Janna",
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: AppColors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  width: double.infinity,
                  height: 40,
                  color: AppColors.white,
                  child: const Row(
                    children: [
                      Text(
                        "See More Details",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Janna",
                          color: AppColors.black,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

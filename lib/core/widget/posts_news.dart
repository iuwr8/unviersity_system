import 'package:flutter/material.dart';

import '../colors/app_colors.dart';
import '../icons/app_icons.dart';
import '../images/app_images.dart';

class PostsNews extends StatelessWidget {
  const PostsNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(12),
        height: 440,
        width: 360,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.lightGrey)
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(3),
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,color: AppColors.lightGrey,
                      border: Border.all(color: AppColors.grey,width: 1.5)

                  ),
                  child: Image.asset(AppIcons.adminsIcon,),
                ),
                const SizedBox(
                  width: 11,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Culture And Science",style:
                    TextStyle(
                      fontFamily: "Janna",
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: AppColors.black,
                    ),
                    ),
                    Text("Admin",style:
                    TextStyle(
                      fontFamily: "Janna",
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: AppColors.blue,
                    ),
                    ),
                  ],
                ),
                const Spacer(),
                const Text("22 sep 2024",style:
                TextStyle(
                  fontFamily: "Janna",
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: AppColors.grey,
                ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("Ipsam fugiat quidem et veniam sed. Omnis \nvelit alias. Nam architecto molestiae.",style:
            TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: AppColors.black,
            ),
            ),
            const SizedBox(
              height: 12,
            ),
            Image.asset(AppImages.subjectList,height: 300,width: 232,),
          ],
        ),
      ),
    );
  }
}

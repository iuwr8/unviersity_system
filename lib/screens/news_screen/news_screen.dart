import 'package:flutter/material.dart';
import 'package:unviersty_system/core/widget/posts_news.dart';

import '../../core/colors/app_colors.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(

              width: double.infinity,
              decoration: const BoxDecoration(
                  color: AppColors.orange,
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(12))
              ),
              child: const SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text("News",
                        style: TextStyle(
                          fontFamily: "Janna",
                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                          color: AppColors.blue,
                        ),),
                      Text("Latest Updates and announcements for \nstudents",
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Janna",
                        ),),
                      SizedBox(
                        height: 24,
                      ),

                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            SizedBox(
              height: 550,
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
              itemCount: 5),
        ),
          ],
        ),
      ),
    );

  }
}

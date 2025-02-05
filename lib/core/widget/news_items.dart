import 'package:flutter/material.dart';
import 'package:unviersty_system/core/colors/app_colors.dart';

class NewsItems extends StatelessWidget {
  const NewsItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(12),
          height: 5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16) ,
            color: AppColors.grey,
            
          ),
          child: const Row(
            children: [
              Column(
                children: [
                  Text("Due 22 sep 2024",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Janna",
                    color: AppColors.red,
                  ),
                  ),
                  Text("Database Assignment",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Janna",
                    color: AppColors.black,
                  ),
                  ),
                  Text("Advanced database",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Janna",
                    color: AppColors.grey,
                  ),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

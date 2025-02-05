import 'package:flutter/material.dart';

import '../colors/app_colors.dart';
import '../icons/app_icons.dart';

class AssignmentsDue extends StatelessWidget {
  const AssignmentsDue({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        width: double.infinity,
        height: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.lightGrey,

        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,color: AppColors.lightGrey,
                    border: Border.all(color: AppColors.grey,width: 1.5)

                ),
                child: Image.asset(AppIcons.assignBookIcon,),
              ),
              const SizedBox(
                width: 16,
              ),
              const Column(
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
              const Spacer(),
              const Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
      ),
    );
  }
}

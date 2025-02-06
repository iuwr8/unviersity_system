
import 'package:flutter/material.dart';
import 'package:unviersty_system/core/colors/app_colors.dart';
import 'package:unviersty_system/on_boarding/on_boarding_data.dart';

class OnBoardingPageWidget extends StatelessWidget {
  final OnBoardingData onBoardingData;
  const OnBoardingPageWidget({super.key, required this.onBoardingData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Image.asset(onBoardingData.imagePath),
              Text(onBoardingData.title,
                style: const TextStyle(
                fontFamily: "Janna",
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: AppColors.blue,
              ),
              ),
              Text(onBoardingData.bio,
                textAlign: TextAlign.center,
                style: const TextStyle(
                fontFamily: "Janna",
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.grey,
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

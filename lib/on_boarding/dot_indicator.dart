import 'package:flutter/material.dart';
import 'package:unviersty_system/core/colors/app_colors.dart';

class DotIndicator extends StatelessWidget {

  final bool isActive;

  const DotIndicator({super.key, required this.isActive});


  @override
  Widget build(BuildContext context) {
    return  AnimatedContainer(
      margin: EdgeInsets.symmetric(horizontal: 2),
      duration: Duration(microseconds: 200),
    height: 8,
    width: isActive? 20:8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: isActive? AppColors.orange:AppColors.grey,
      ),
    );
  }
}

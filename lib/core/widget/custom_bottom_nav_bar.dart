
import 'package:flutter/cupertino.dart';

import '../colors/app_colors.dart';

class CustomBottomNavBar extends StatelessWidget {
  final String iconPath;
  final bool isSelected;
  const CustomBottomNavBar({
    super.key,
    required this.iconPath,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
        decoration: BoxDecoration(
            color: isSelected ? AppColors.white.withOpacity(0.6) : null,
            borderRadius: BorderRadius.circular(66)
        ),
        child:
        ImageIcon(
            AssetImage(iconPath))
    );
  }
}

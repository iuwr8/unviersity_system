
import 'package:flutter/material.dart';
import 'package:unviersty_system/core/colors/app_colors.dart';

class TabItem extends StatelessWidget {
  final String title;
  final bool isSelected;

  const TabItem({required this.title, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontFamily: "Janna",
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.black : Colors.grey,
          ),
        ),
        if (isSelected)
          Container(
            margin: EdgeInsets.only(top: 4),
            height: 3,
            width: 40,
            color: AppColors.orange,
          ),
      ],
    );
  }
}
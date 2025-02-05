import 'package:flutter/material.dart';
import 'package:unviersty_system/core/widget/tab_item.dart';

class TabBarSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [

            TabItem(title: "Materials",),
            SizedBox(
              width: 16,
            ),
            TabItem(title: "Assignments",),
            SizedBox(
              width: 16,
            ),
            TabItem(title: "Quizzes"),
            SizedBox(
              width: 16,
            ),
            TabItem(title: "Announcements"),

          ],
        ),
      ),
    );
  }
}
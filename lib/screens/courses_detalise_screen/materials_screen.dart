import 'package:flutter/material.dart';
import 'package:unviersty_system/core/routes/page_routes_name.dart';

import '../../core/widget/lecture_card.dart';
import '../../core/widget/tab_bar_section.dart';
import '../../core/widget/tab_item.dart';

class MaterialsScreen extends StatelessWidget {
  const MaterialsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return LectureCard();
              },
            ),
          ),
        ],
      ),
    );
  }
}

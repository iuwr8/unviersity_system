import 'package:flutter/material.dart';

import '../../core/widget/assignments_due.dart';

class AssignmentsScreen extends StatelessWidget {
  const AssignmentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: ListView.separated(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 12),
            itemBuilder: (context,index)=>
            const SizedBox(
                height: 100,
                width: double.infinity,
                child: AssignmentsDue()),
            separatorBuilder: (context,index)=> const SizedBox(
              height: 16,
            ),
            itemCount: 8),
      ),
    );
  }
}

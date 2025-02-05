
import 'package:flutter/material.dart';
import 'package:unviersty_system/core/icons/app_icons.dart';

import '../colors/app_colors.dart';
import 'custom_text_field.dart';

class LectureCard extends StatelessWidget {
  const LectureCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(

                    backgroundColor: AppColors.lightGrey,
                    child:
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(AppIcons.pdfIcon,height: 30,width: 26,),
                    )),
                const SizedBox(width: 10),
                const Text(
                  "Database Lecture One",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,fontFamily: "Janna",),
                ),
                const Spacer(),
                const ImageIcon(AssetImage(AppIcons.downloadIcon),size: 24,color: AppColors.blue,)
              ],
            ),
            const SizedBox(height: 5),
            const Text(
              "Ipsam Fugiat Quidem Et Veniam Sed. Omnis Velit Alias. Nam Architecto Moles.",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500,fontFamily: "Janna",),
            ),
            const SizedBox(height: 10),
            const CustomTextField(
              maxLines: 1,
              hint: "Add Comment",
              hintColor: AppColors.darkGrey,


            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(onPressed: (){}, child:
                const Text("4 Comments",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600,fontFamily: "Janna",color: AppColors.blue),)
                ),

                FloatingActionButton(
                  onPressed: () {},

                  backgroundColor: AppColors.orange,
                  mini: true,
                  child: const ImageIcon(AssetImage(AppIcons.senderIcon),color: AppColors.white,),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
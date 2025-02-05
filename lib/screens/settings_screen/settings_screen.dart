import 'package:flutter/material.dart';
import 'package:unviersty_system/core/colors/app_colors.dart';
import 'package:unviersty_system/core/routes/page_routes_name.dart';
import 'package:unviersty_system/screens/login_screen/login_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("settings"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, PageRoutesName.personalInformationScreen);
              },
              child: Container(
                height: 56,
                color: Colors.transparent,
                child: const Row(
                  children: [
                    Text("Personal information",
                    style: TextStyle(
                      fontFamily: "Janna",
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: AppColors.black,
                    ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios,color: AppColors.darkGrey,)
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, PageRoutesName.changePasswordScreen);
              },
              child: Container(
                height: 56,
                color: Colors.transparent,
                child: const Row(
                  children: [
                    Text("Change password",
                    style: TextStyle(
                      fontFamily: "Janna",
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: AppColors.black,
                    ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios,color: AppColors.darkGrey,)
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, PageRoutesName.languageSelectionScreen);
              },
              child: Container(
                height: 56,
                color: Colors.transparent,
                child: const Row(
                  children: [
                    Text("Language",
                    style: TextStyle(
                      fontFamily: "Janna",
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: AppColors.black,
                    ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios,color: AppColors.darkGrey,)
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
              },
              child: Container(
                height: 56,
                color: Colors.transparent,
                child: const Row(
                  children: [
                    Text("Contact Us",
                    style: TextStyle(
                      fontFamily: "Janna",
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: AppColors.black,
                    ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios,color: AppColors.darkGrey,)
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
              },
              child: Container(
                height: 56,
                color: Colors.transparent,
                child: const Row(
                  children: [
                    Text("Review App",
                    style: TextStyle(
                      fontFamily: "Janna",
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: AppColors.black,
                    ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios,color: AppColors.darkGrey,)
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                      (route) => false,
                );

              },
              child: const Row(
                children: [
                  Icon(Icons.login_outlined,color: AppColors.red,),
                  Text("Logout",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Janna",
                    color: AppColors.red,
                  ),
                  ),
                
                ],
              ),
            ),
            

          ],
        ),
      ),
    );
  }
}

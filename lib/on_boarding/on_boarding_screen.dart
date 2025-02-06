import 'package:flutter/material.dart';
import 'package:unviersty_system/core/colors/app_colors.dart';
import 'package:unviersty_system/core/images/app_images.dart';
import 'package:unviersty_system/core/routes/page_routes_name.dart';
import 'package:unviersty_system/on_boarding/dot_indicator.dart';
import 'package:unviersty_system/on_boarding/on_boarding_data.dart';
import 'package:unviersty_system/on_boarding/on_boarding_page_widget.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<OnBoardingData> onBoardingList = [
    OnBoardingData(
        imagePath: AppImages.onBoarding1, title: "Welcome to our university",bio: "Zo3nf"),
    OnBoardingData(
        imagePath: AppImages.onBoarding2, title: "Welcome to our university",bio: "Zo3nf"),
    OnBoardingData(
        imagePath: AppImages.onBoarding3, title: "Welcome to our university",bio: "Zo3nf"),
    OnBoardingData(
        imagePath: AppImages.onBoarding4, title: "Welcome to our university",bio: "Zo3nf"),
  ];

 PageController pageController = PageController();
 int selectedIndex = 0;
 @override
  void initState() {
    super.initState();
    pageController.addListener((){
      selectedIndex = pageController.page?.toInt()??0;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AppImages.splashLogo,width: 128,height: 128,),
            Expanded(
              child: PageView.builder(
                controller: pageController,
                  itemBuilder: (context,index) => OnBoardingPageWidget(onBoardingData: onBoardingList[index]),
                itemCount: onBoardingList.length,

              ),

            ),
            Stack(alignment: Alignment.center,
              children: [
                Row(
                  children: [
                    if(selectedIndex != 0)
                    TextButton(
                      onPressed: (){
                        pageController.animateToPage(
                            selectedIndex-1,
                            duration: Duration(microseconds: 300)  ,
                            curve: Curves.fastOutSlowIn);
                      },
                      child: Text("Back",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        fontFamily: "Janna",
                        color: AppColors.grey,
                      ),
                      ),

                    ),
                    Spacer(),
                    TextButton(
                      onPressed: (){
                       if(selectedIndex == 3){
                         Navigator.pushReplacementNamed(context, PageRoutesName.loginScreen);
                       }else{
                         pageController.animateToPage(
                             selectedIndex+1,
                             duration: Duration(microseconds: 300)  ,
                             curve: Curves.fastOutSlowIn);
                       };
                      },
                      child: Text(selectedIndex == 3? "Finish":"Next",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        fontFamily: "Janna",
                        color: AppColors.grey,
                      ),
                      ),

                    ),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    DotIndicator(isActive: selectedIndex == 0),
                    DotIndicator(isActive: selectedIndex == 1),
                    DotIndicator(isActive: selectedIndex == 2),
                    DotIndicator(isActive: selectedIndex == 3),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

}

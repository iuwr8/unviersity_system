import 'dart:async';

import 'package:flutter/material.dart';
import '../../core/images/app_images.dart';
import '../../core/routes/page_routes_name.dart';


class SplashScreen extends StatefulWidget {
  static const routeName = "/splash_view";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    Timer(
        Duration(seconds: 3),
            () => Navigator.pushNamed(
          context,
          PageRoutesName.loginScreen,
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Image.asset(AppImages.splashLogo,
              height: mediaQuery.height * 0.24,),
          ],
        ),
      ),
    );
  }
}

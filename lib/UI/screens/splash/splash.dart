import 'package:flutter/material.dart';
import '../../AppImages/appImages.dart';
import 'package:get/get.dart';
import '../../appColors/appColors.dart';
import '../login/Login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 4), () => Get.to(LoginScreen()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: AppColor.primaryColor,
      child: Center(
        child: Image.asset(AppImages.appLogoWhite),
      ),
    );
  }
}

import 'package:compound_app/UI/appColors/appColors.dart';
import 'package:compound_app/UI/screens/AccountSettings/accountSettings.dart';
import 'package:compound_app/UI/screens/bottomNavigation/bottomNavigation.dart';
import 'package:compound_app/UI/screens/signupStepOne/signupStepOne.dart';
import 'package:compound_app/UI/sharedWidgets/actionButton.dart';
import 'package:compound_app/UI/sharedWidgets/title.dart';
import 'package:compound_app/UI/sharedWidgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

var devicewidth;
var deviceHeight;

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    devicewidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            LogoWidget(),
            SizedBox(
              height: 40,
            ),
            TitleWidget(
              label: 'login',
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(
                    color: AppColor.hintsColor,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    color: AppColor.hintsColor,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  'forget password ?',
                  style: TextStyle(
                    color: AppColor.hintsColor,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ActionButton(
              label: 'Login',
              onPressed: () {},
            ),
            SizedBox(
              height: 20,
            ),
            ActionButton(
              label: 'Sign Up',
              onPressed: () {
                Get.to(BottomNavigation());
              },
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

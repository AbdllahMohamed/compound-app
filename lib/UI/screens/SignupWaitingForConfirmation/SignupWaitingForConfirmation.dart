import 'package:compound_app/UI/AppImages/appImages.dart';
import 'package:compound_app/UI/appColors/appColors.dart';
import 'package:compound_app/UI/screens/ReportIssue/ReportIssue.dart';
import 'package:compound_app/UI/sharedWidgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupWaitingForConfirmationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            LogoWidget(),
            SizedBox(
              height: 100,
            ),
            Image.asset(AppImages.appCheck),
            SizedBox(
              height: 30,
            ),
            Text(
              'Account Activation',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: AppColor.primaryColor,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20,
              ),
              child: Text(
                'We are working on activating your',
                style: TextStyle(
                  fontSize: 15,
                  color: AppColor.hintsColor,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'account and making sure of all your information.',
                style: TextStyle(
                  fontSize: 15,
                  color: AppColor.hintsColor,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'This process makes the community safe.',
                style: TextStyle(
                  fontSize: 15,
                  color: AppColor.hintsColor,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'and maintains privacy.',
                style: TextStyle(
                  fontSize: 15,
                  color: AppColor.hintsColor,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Get.to(ReportIssueScreen());
              },
              child: Text(
                'Call us',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColor.primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:compound_app/UI/AppImages/appImages.dart';
import 'package:compound_app/UI/appColors/appColors.dart';
import 'package:compound_app/UI/sharedWidgets/logo.dart';
import 'package:compound_app/UI/sharedWidgets/title.dart';
import 'package:flutter/material.dart';

class ReportIssueScreen extends StatelessWidget {
  static const routeName = '/reportissuescreen';
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
              height: 50,
            ),
            TitleWidget(
              label: 'Report Issue',
            ),
            SizedBox(
              height: 40,
            ),
            Image.asset(AppImages.appColorCheck),
            SizedBox(
              height: 30,
            ),
            Text(
              'Your request has been sent successfully',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColor.primaryColor,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'We will inform you of the latest',
              style: TextStyle(
                fontSize: 18,
                color: AppColor.hintsColor,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Text(
                'news regarding your request',
                style: TextStyle(
                  fontSize: 18,
                  color: AppColor.hintsColor,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
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

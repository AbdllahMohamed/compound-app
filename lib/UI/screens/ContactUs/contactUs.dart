import 'package:compound_app/UI/AppImages/appImages.dart';
import 'package:compound_app/UI/appColors/appColors.dart';
import 'package:compound_app/UI/screens/AccountSettings/accountSettings.dart';
import 'package:compound_app/UI/sharedWidgets/actionButton.dart';
import 'package:compound_app/UI/sharedWidgets/logo.dart';
import 'package:compound_app/UI/sharedWidgets/subTitle.dart';
import 'package:compound_app/UI/sharedWidgets/title.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              height: 50,
            ),
            TitleWidget(
              label: 'Report Issue',
            ),
            SizedBox(
              height: 15,
            ),
            SubTitle(
              label: 'Details',
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: TextFormField(
                maxLines: 4,
                decoration: InputDecoration(hintText: 'Details'),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Container(
                height: 80,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    border: Border.all(
                  color: AppColor.hintsColor,
                )),
                child: Row(
                  children: [
                    SizedBox(
                      width: 8,
                    ),
                    Image.asset(AppImages.applSelectImage),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Select Image',
                      style: TextStyle(
                        color: AppColor.hintsColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ActionButton(
              onPressed: () {
                Get.to(AccountSettingsScreen());
              },
              label: 'submit',
            ),
          ],
        ),
      ),
    );
  }
}

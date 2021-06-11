import 'package:compound_app/UI/screens/login/Login.dart';
import 'package:compound_app/UI/screens/signupStepThree/signupStepThree.dart';
import 'package:compound_app/UI/sharedWidgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:compound_app/UI/appColors/appColors.dart';
import 'package:compound_app/UI/sharedWidgets/subTitle.dart';
import 'package:compound_app/UI/sharedWidgets/title.dart';
import 'package:get/route_manager.dart';

class SignUpStepTwoScreen extends StatelessWidget {
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
              height: 40,
            ),
            TitleWidget(
              label: 'Sign Up',
            ),
            SizedBox(
              height: 20,
            ),
            SubTitle(
              label: 'Please choose one of the following',
            ),
            SizedBox(
              height: 35,
            ),
            RegisterType(
              label: 'Owner',
              subLabel: 'I am the owner of this unit',
              onTap: () {
                Get.to(SignUpStepThreeScreen());
              },
            ),
            RegisterType(
              label: 'Resident',
              subLabel: 'I live in this unit',
              onTap: () {},
            ),
            RegisterType(
              label: 'Tenant',
              subLabel: 'i rent this unit',
              onTap: () {},
            ),
            RegisterType(
              label: 'Other',
              subLabel: 'Other',
              onTap: () {},
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

// ignore: must_be_immutable
class RegisterType extends StatelessWidget {
  String label;
  String subLabel;
  Function onTap;
  RegisterType({
    this.label,
    this.subLabel,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 8,
      ),
      child: InkWell(
        onTap: onTap,
        child: Container(
            width: deviceWidth * 0.9,
            height: 80,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xffEBE5E5),
                width: 1.2,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Icon(
                    Icons.person,
                    color: AppColor.primaryColor,
                    size: 40,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        label,
                        style: TextStyle(
                          color: AppColor.primaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        subLabel,
                        style: TextStyle(
                          color: Color(0xffD1D4D5),
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Center(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xffCDCFD1),
                      size: 35,
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

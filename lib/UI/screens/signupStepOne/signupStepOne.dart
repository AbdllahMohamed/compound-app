import 'package:compound_app/UI/appColors/appColors.dart';
import 'package:compound_app/UI/screens/signupStepTwo/signupStepTwo.dart';
import 'package:compound_app/UI/sharedWidgets/actionButton.dart';
import 'package:compound_app/UI/sharedWidgets/subTitle.dart';
import 'package:compound_app/UI/sharedWidgets/title.dart';
import 'package:compound_app/UI/sharedWidgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpStepOneScreen extends StatefulWidget {
  @override
  _SignUpStepOneScreenState createState() => _SignUpStepOneScreenState();
}

class _SignUpStepOneScreenState extends State<SignUpStepOneScreen> {
  List<String> _projects = ['Project A', 'Project B', 'Project C', 'Project D'];
  String _selectedproject = 'Project ';
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
              label: 'Details',
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: DropdownButton(
                iconEnabledColor: Color(0xffAA9E9E),
                isExpanded: true,
                iconSize: 30,
                underline: Divider(
                  thickness: 1.5,
                  color: Color(0xff707070).withOpacity(0.4),
                ),
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Icon(Icons.arrow_drop_down),
                ),
                hint: Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: Text(
                    _selectedproject,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xff707070),
                    ),
                  ),
                ),
                onChanged: (newValue) {
                  setState(() {
                    _selectedproject = newValue;
                  });
                },
                style: TextStyle(
                  color: Color(0xff707070),
                ),
                items: _projects.map((location) {
                  return DropdownMenuItem(
                    child: new Text(
                      location,
                      style: TextStyle(
                        color: Color(0xff707070),
                      ),
                    ),
                    value: location,
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Unit number',
                  hintStyle: TextStyle(
                    color: AppColor.hintsColor,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            ActionButton(
              label: 'Next',
              onPressed: () {
                Get.to(SignUpStepTwoScreen());
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

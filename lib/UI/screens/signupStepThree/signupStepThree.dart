import 'package:compound_app/UI/sharedWidgets/actionButton.dart';
import 'package:compound_app/UI/sharedWidgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:compound_app/UI/appColors/appColors.dart';
import 'package:compound_app/UI/sharedWidgets/subTitle.dart';
import 'package:compound_app/UI/sharedWidgets/title.dart';
import 'package:international_phone_input/international_phone_input.dart';

class SignUpStepThreeScreen extends StatefulWidget {
  static const routeName = '/signupStepThree';

  @override
  _SignUpStepThreeScreenState createState() => _SignUpStepThreeScreenState();
}

class _SignUpStepThreeScreenState extends State<SignUpStepThreeScreen> {
  String phoneNumber;

  String phoneIsoCode;

  void onPhoneNumberChange(
      String number, String internationalizedPhoneNumber, String isoCode) {
    setState(() {
      phoneNumber = number;
      phoneIsoCode = isoCode;
    });
  }

  //radio button values
  String radioButtonItem = 'ONE';
  int id = 1;

  //check checkbox
  bool _checkCheckox = false;
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
              label: 'Personal Information',
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'First Name',
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
                  hintText: 'Last Name',
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
                  hintText: 'Email Address',
                  hintStyle: TextStyle(
                    color: AppColor.hintsColor,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: InternationalPhoneInput(
                onPhoneNumberChange: onPhoneNumberChange,
                initialPhoneNumber: phoneNumber,
                initialSelection: phoneIsoCode,
                hintText: 'Mobile',
                hintStyle: TextStyle(color: AppColor.hintsColor),
                enabledCountries: ['+20', '+1', '+20'],
                border: UnderlineInputBorder(),
                decoration: InputDecoration(border: UnderlineInputBorder()),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Date of Brith',
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
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Radio(
                    activeColor: AppColor.primaryColor,
                    value: 1,
                    groupValue: id,
                    onChanged: (val) {
                      setState(() {
                        radioButtonItem = 'Male';
                        id = 1;
                      });
                    },
                  ),
                  Text(
                    'Male',
                  ),
                  Radio(
                    activeColor: AppColor.primaryColor,
                    value: 2,
                    groupValue: id,
                    onChanged: (val) {
                      setState(() {
                        radioButtonItem = 'Female';
                        id = 2;
                      });
                    },
                  ),
                  Text(
                    'Female',
                  ),
                  Radio(
                    activeColor: AppColor.primaryColor,
                    value: 3,
                    groupValue: id,
                    onChanged: (val) {
                      setState(() {
                        radioButtonItem = 'Other';
                        id = 3;
                      });
                    },
                  ),
                  Text(
                    'Other',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Checkbox(
                    activeColor: AppColor.primaryColor,
                    value: _checkCheckox,
                    onChanged: (bool val) {
                      setState(() {
                        _checkCheckox = !_checkCheckox;
                      });
                    },
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 4.0,
                        left: 8,
                      ),
                      child: new RichText(
                        text: new TextSpan(
                          text: 'By clicking the Submit , you agree to our \n',
                          style: TextStyle(
                            color: AppColor.hintsColor,
                            fontSize: 16,
                          ),
                          children: <TextSpan>[
                            new TextSpan(
                              text: 'Terms and Conditions ',
                              style: TextStyle(
                                color: AppColor.primaryColor,
                                fontSize: 16,
                              ),
                            ),
                            TextSpan(
                              text:
                                  'and have read our Guidelines and Policies!',
                              style: TextStyle(
                                color: AppColor.hintsColor,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ActionButton(
              label: 'Next',
              onPressed: () {
                // Navigator.of(context)
                //     .pushNamed(SignupWaitingForConfirmationScreen.routeName);
              },
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:compound_app/UI/AppImages/appImages.dart';
import 'package:compound_app/UI/appColors/appColors.dart';
import 'package:compound_app/UI/sharedWidgets/actionButton.dart';
import 'package:compound_app/UI/sharedWidgets/subTitle.dart';
import 'package:compound_app/UI/sharedWidgets/title.dart';
import 'package:flutter/material.dart';
import 'package:international_phone_input/international_phone_input.dart';

class AccountSettingsScreen extends StatefulWidget {
  @override
  _AccountSettingsScreenState createState() => _AccountSettingsScreenState();
}

class _AccountSettingsScreenState extends State<AccountSettingsScreen> {
  bool _hidefromNeighborslist = false;
  bool _receiveNotification = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              InkWell(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: Image.asset(AppImages.appDrawer),
                ),
                onTap: () {},
              ),
              Image.asset(
                AppImages.applogo,
                width: 170,
                height: 50,
              ),
              Spacer(),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 18.0),
                child: Image.asset(AppImages.appNoticication),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          SubTitle(
            label: 'Account Seetings',
            labelFontSiz: 30,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 70,
                    width: 75,
                    child: Stack(
                      children: [
                        Image.asset(AppImages.appUser),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            width: 33,
                            height: 33,
                            decoration: BoxDecoration(
                              color: AppColor.primaryColor,
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              AppImages.appEditIcon,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ameina",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text(
                        "Azadir project",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Ameina@gmail.com',
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
              // onPhoneNumberChange: onPhoneNumberChange,
              // initialPhoneNumber: phoneNumber,
              // initialSelection: phoneIsoCode,
              hintText: 'Mobile',
              hintStyle: TextStyle(color: AppColor.primaryColor),
              enabledCountries: ['+20', '+1', '+20'],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Checkbox(
                  activeColor: AppColor.primaryColor,
                  value: _hidefromNeighborslist,
                  onChanged: (bool val) {
                    setState(() {
                      _hidefromNeighborslist = !_hidefromNeighborslist;
                    });
                  },
                ),
                Text(
                  'Hide from Neighbors list ',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Checkbox(
                  activeColor: AppColor.primaryColor,
                  value: _receiveNotification,
                  onChanged: (bool val) {
                    setState(() {
                      _receiveNotification = !_receiveNotification;
                    });
                  },
                ),
                Text(
                  'Receive notification from the app ',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ActionButton(
            label: 'Save',
            onPressed: () {},
          ),
        ],
      ),
    ));
  }
}

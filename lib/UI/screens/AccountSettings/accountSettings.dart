import 'package:badges/badges.dart';
import 'package:compound_app/UI/AppImages/appImages.dart';
import 'package:compound_app/UI/appColors/appColors.dart';
import 'package:compound_app/UI/appDrawer/appDrawer.dart';
import 'package:compound_app/UI/screens/MyRequsets/myRequsets.dart';
import 'package:compound_app/UI/screens/community/community.dart';
import 'package:compound_app/UI/screens/home/home.dart';
import 'package:compound_app/UI/sharedWidgets/actionButton.dart';
import 'package:compound_app/UI/sharedWidgets/subTitle.dart';
import 'package:international_phone_input/international_phone_input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountSettingsScreen extends StatefulWidget {
  @override
  _AccountSettingsScreenState createState() => _AccountSettingsScreenState();
}

class _AccountSettingsScreenState extends State<AccountSettingsScreen> {
  bool _hidefromNeighborslist = false;
  bool _receiveNotification = false;

  double xOffset = 0;

  double yOffset = 0;

  double zOffset = 0;

  bool isDrawerOpen = false;

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
      if (currentIndex == 0) {
        Get.to(CommunityScreen());
      } else if (currentIndex == 1) {
        Get.to(HomeScreen());
      } else {
        Get.to(MyRequsetsScreen());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DrawerScreen(),
        AnimatedContainer(
          transform: Matrix4.translationValues(xOffset, yOffset, zOffset)
            ..scale(isDrawerOpen ? 0.986 : 1.00),
          duration: Duration(milliseconds: 100),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: isDrawerOpen
                ? BorderRadius.circular(15)
                : BorderRadius.circular(0),
          ),
          child: Scaffold(
            body: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      isDrawerOpen
                          ? InkWell(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 15.0,
                                  right: 15,
                                ),
                                child: Image.asset(AppImages.appDrawer),
                              ),
                              onTap: () {
                                setState(() {
                                  xOffset = 0;
                                  yOffset = 0;
                                  isDrawerOpen = false;
                                });
                              },
                            )
                          : InkWell(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 15.0,
                                  right: 15,
                                ),
                                child: Image.asset(AppImages.appDrawer),
                              ),
                              onTap: () {
                                setState(() {
                                  xOffset = 260;
                                  yOffset = 5;

                                  isDrawerOpen = true;
                                });
                              },
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
                        child: Badge(
                            position: BadgePosition(top: 10, end: 10),
                            badgeContent: Text(
                              '9',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            child: Image.asset(
                              AppImages.appNoticication,
                            )),
                      ),
                    ],
                  ),
                  SafeArea(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
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
                                    _hidefromNeighborslist =
                                        !_hidefromNeighborslist;
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
                                    _receiveNotification =
                                        !_receiveNotification;
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
                          onPressed: () {
                            Get.to(HomeScreen());
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              onTap: onTabTapped, // new
              currentIndex: currentIndex, // new
              items: [
                BottomNavigationBarItem(
                  icon: Image.asset(
                    AppImages.appCommunity,
                    width: 25,
                    height: 22,
                    color: currentIndex == 0
                        ? AppColor.primaryColor
                        : AppColor.hintsColor,
                  ),
                  label: 'Community',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    AppImages.appHome,
                    width: 25,
                    height: 22,
                    color: currentIndex == 1
                        ? AppColor.primaryColor
                        : AppColor.hintsColor,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    AppImages.appRequsets,
                    width: 25,
                    height: 22,
                    color: currentIndex == 2
                        ? AppColor.primaryColor
                        : AppColor.hintsColor,
                  ),
                  label: 'My requsets',
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

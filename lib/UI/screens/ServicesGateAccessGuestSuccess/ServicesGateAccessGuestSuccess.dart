import 'package:badges/badges.dart';
import 'package:compound_app/UI/sharedWidgets/actionButton.dart';
import 'package:flutter/material.dart';
import 'package:compound_app/UI/appColors/appColors.dart';
import 'package:compound_app/UI/sharedWidgets/subTitle.dart';
import 'package:compound_app/UI/sharedWidgets/title.dart';
import 'package:get/get.dart';
import '../../AppImages/appImages.dart';
import '../../appDrawer/appDrawer.dart';
import '../MyRequsets/myRequsets.dart';
import '../community/community.dart';
import '../home/home.dart';

class ServicesGateAccessGuestSuccess extends StatefulWidget {
  @override
  _ServicesGateAccessGuestSuccessState createState() =>
      _ServicesGateAccessGuestSuccessState();
}

class _ServicesGateAccessGuestSuccessState
    extends State<ServicesGateAccessGuestSuccess> {
  String phoneNumber;
  String phoneIsoCode;

  void onPhoneNumberChange(
      String number, String internationalizedPhoneNumber, String isoCode) {
    setState(() {
      phoneNumber = number;
      phoneIsoCode = isoCode;
    });
  }

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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      TitleWidget(
                        label: 'Services',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SubTitle(
                        label: 'Gate access for guest',
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Center(child: Image.asset(AppImages.appColorCheck)),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Text(
                          'Access code',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: AppColor.primaryColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Text(
                          '124795873sa',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: AppColor.primaryColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ActionButton(
                        label: 'share access code with your guest',
                        onPressed: () {},
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
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

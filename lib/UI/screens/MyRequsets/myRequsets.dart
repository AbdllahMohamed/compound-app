import 'dart:ui';
import 'package:badges/badges.dart';
import 'package:compound_app/UI/AppImages/appImages.dart';
import 'package:compound_app/UI/appColors/appColors.dart';
import 'package:compound_app/UI/appDrawer/appDrawer.dart';
import 'package:compound_app/UI/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../AppImages/appImages.dart';
import '../../appColors/appColors.dart';
import '../../sharedWidgets/subTitle.dart';
import '../../sharedWidgets/title.dart';
import '../community/community.dart';

class MyRequsetsScreen extends StatefulWidget {
  @override
  _MyRequsetsScreenState createState() => _MyRequsetsScreenState();
}

class _MyRequsetsScreenState extends State<MyRequsetsScreen> {
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

      print(currentIndex);
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
                  SizedBox(
                    height: 30,
                  ),
                  TitleWidget(
                    label: 'Home',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SubTitle(
                    label: 'Services Detials',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 2,
                      itemBuilder: (_, i) => Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20, bottom: 15),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: AppColor.hintsColor,
                            ),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          AppImages.appHousekeeping,
                                          width: 50,
                                          height: 50,
                                        ),
                                        Text('housekeeping')
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Text(
                                      '600 Egp',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, top: 5),
                                    child: Text(
                                      'Date : 23/6/2021',
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 8.0,
                                      top: 10,
                                    ),
                                    child: Text(
                                      'notes : come early before 12 PM',
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.yellow,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 8.0,
                                      top: 10,
                                      bottom: 10,
                                    ),
                                    child: Text(
                                      'Under processing',
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
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

import 'package:badges/badges.dart';
import 'package:compound_app/UI/AppImages/appImages.dart';
import 'package:compound_app/UI/appColors/appColors.dart';
import 'package:compound_app/UI/screens/MyRequsets/myRequsets.dart';
import 'package:compound_app/UI/screens/community/community.dart';
import 'package:compound_app/UI/screens/home/home.dart';
import 'package:compound_app/UI/screens/login/Login.dart';
import 'package:compound_app/UI/screens/servicesGateAccessGuest/servicesGateAccessGuest.dart';
import 'package:flutter/material.dart';
import 'package:compound_app/UI/appDrawer/appDrawer.dart';
import 'package:get/get.dart';
import '../../AppImages/appImages.dart';
import '../../appColors/appColors.dart';
import '../../sharedWidgets/actionButton.dart';
import '../../sharedWidgets/subTitle.dart';
import '../../sharedWidgets/title.dart';

class ServicesScreen extends StatefulWidget {
  @override
  _ServicesScreenState createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
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
                  SizedBox(
                    height: 20,
                  ),
                  TitleWidget(
                    label: 'Services',
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SubTitle(
                    label: 'Gate access',
                  ),

                  Expanded(
                    child: ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: AppColor.hintsColor,
                                ),
                              ),
                              child: Image.asset(AppImages.appBarCode)),
                        ),
                        InkWell(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(AppImages.appRefresh),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Refresh',
                                style: TextStyle(
                                  color: AppColor.primaryColor,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ActionButton(
                          label: 'Access For Guest',
                          onPressed: () {
                            Get.to(ServicesGateAccessGuest());
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),

                  // Padding(
                  //   padding: const EdgeInsets.all(20.0),
                  //   child: Container(
                  //     height: deviceHeight * 0.7,
                  //     decoration: BoxDecoration(
                  //       border: Border.all(
                  //         color: AppColor.hintsColor,
                  //       ),
                  //     ),
                  //     child: ListView(
                  //       // crossAxisAlignment: CrossAxisAlignment.center,
                  //       children: [
                  //         Image.asset(AppImages.appBarCode),
                  //         InkWell(
                  //           child: Row(
                  //             mainAxisAlignment: MainAxisAlignment.center,
                  //             children: [
                  //               Image.asset(AppImages.appRefresh),
                  //               SizedBox(
                  //                 width: 8,
                  //               ),
                  //               Text(
                  //                 'Refresh',
                  //                 style: TextStyle(
                  //                   color: AppColor.primaryColor,
                  //                   fontSize: 20,
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //         SizedBox(
                  //           height: 10,
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
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

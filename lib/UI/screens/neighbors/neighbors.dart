import 'dart:ui';
import 'package:badges/badges.dart';
import 'package:compound_app/UI/AppImages/appImages.dart';
import 'package:compound_app/UI/appColors/appColors.dart';
import 'package:compound_app/UI/appDrawer/appDrawer.dart';
import 'package:compound_app/UI/sharedWidgets/title.dart';
import 'package:flutter/material.dart';

class NeighborsScreen extends StatefulWidget {
  @override
  _NeighborsScreenState createState() => _NeighborsScreenState();
}

class _NeighborsScreenState extends State<NeighborsScreen> {
  double xOffset = 0;

  double yOffset = 0;

  double zOffset = 0;

  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
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
              child: SafeArea(
                child: Scaffold(
                  body: SafeArea(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
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
                          label: 'Neighbors',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 8,
                                bottom: 8,
                                left: 15,
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: AppColor.primaryColor,
                                        width: 1.5,
                                      ),
                                    ),
                                    child: Image.asset(
                                      AppImages.appUser,
                                      width: 50,
                                      height: 50,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Amina Hossam',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'B216',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: AppColor.hintsColor,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Divider(
                              thickness: 2,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

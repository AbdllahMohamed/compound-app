import 'dart:ui';
import 'package:badges/badges.dart';
import 'package:compound_app/UI/AppImages/appImages.dart';
import 'package:compound_app/UI/appColors/appColors.dart';
import 'package:compound_app/UI/appDrawer/appDrawer.dart';
import 'package:compound_app/UI/screens/login/Login.dart';
import 'package:compound_app/UI/sharedWidgets/actionButton.dart';
import 'package:compound_app/UI/sharedWidgets/title.dart';
import 'package:flutter/material.dart';

class MakePostScreen extends StatefulWidget {
  @override
  _MakePostScreenState createState() => _MakePostScreenState();
}

class _MakePostScreenState extends State<MakePostScreen> {
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
                          label: 'Community',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            width: deviceWidth,
                            height: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 10,
                                    left: 15,
                                  ),
                                  child: Image.asset(
                                    AppImages.appUser,
                                    width: 50,
                                    height: 50,
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      right: 25,
                                    ),
                                    child: TextFormField(
                                      autofocus: true,
                                      maxLines: 2,
                                      decoration: InputDecoration(
                                        contentPadding: const EdgeInsets.only(
                                          top: 25.0,
                                          bottom: 25,
                                        ),
                                        hintText:
                                            'What\'s you want share\n with your community ?',
                                        hintStyle: TextStyle(
                                          color: Color(0xffB9BFC2),
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          child: Container(
                            height: 100,
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
                                    fontSize: 18,
                                    fontWeight: FontWeight.w300,
                                    color: AppColor.hintsColor,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Spacer(),
                        Spacer(),
                        Spacer(),
                        Expanded(
                          child: ActionButton(
                            onPressed: () {
                              // Get.to(AccountSettingsScreen());
                            },
                            label: 'Post',
                          ),
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

import 'dart:ui';
import 'package:awesome_card/awesome_card.dart';
import 'package:awesome_card/credit_card.dart';
import 'package:badges/badges.dart';
import 'package:compound_app/UI/AppImages/appImages.dart';
import 'package:compound_app/UI/appColors/appColors.dart';
import 'package:compound_app/UI/appDrawer/appDrawer.dart';
import 'package:compound_app/UI/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../AppImages/appImages.dart';
import '../../appColors/appColors.dart';
import '../../sharedWidgets/actionButton.dart';
import '../../sharedWidgets/subTitle.dart';
import '../../sharedWidgets/title.dart';
import '../MyRequsets/myRequsets.dart';
import '../community/community.dart';

class ServiceRequestScreen extends StatefulWidget {
  @override
  _ServiceRequestScreenState createState() => _ServiceRequestScreenState();
}

class _ServiceRequestScreenState extends State<ServiceRequestScreen> {
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

  List<String> _projects = [
    'Booking date A',
    'Booking date B',
    'Booking date C',
    'Booking date D'
  ];
  String _selectedproject = 'Booking date ';

  bool _isCashSelected = false;
  bool _isCredithSelected = false;

  String cardNumber = '';
  String cardHolderName = '';
  String expiryDate = '';
  String cvv = '';
  bool showBack = false;

  FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {
        _focusNode.hasFocus ? showBack = true : showBack = false;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
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
              child: SingleChildScrollView(
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
                      label: 'Services',
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
                    Padding(
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  padding:
                                      const EdgeInsets.only(left: 8.0, top: 5),
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
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                      ),
                      child: TextFormField(
                        maxLines: 2,
                        decoration: InputDecoration(hintText: 'Note'),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SubTitle(
                      label: 'Payment type',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  _isCashSelected = true;
                                  _isCredithSelected = false;
                                });
                              },
                              child: Container(
                                width: 120,
                                height: 130,
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: _isCashSelected
                                      ? AppColor.primaryColor
                                      : Colors.white,
                                  border: Border.all(
                                    color: AppColor.hintsColor,
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset(
                                      AppImages.appCash,
                                      width: 45,
                                      height: 55,
                                      color: _isCashSelected
                                          ? Colors.white
                                          : AppColor.primaryColor,
                                    ),
                                    FittedBox(
                                      child: Text(
                                        "cash",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w300,
                                          color: _isCashSelected
                                              ? Colors.white
                                              : AppColor.primaryColor,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  _isCredithSelected = true;
                                  _isCashSelected = false;
                                });
                              },
                              child: Container(
                                width: 120,
                                height: 130,
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: _isCredithSelected
                                      ? AppColor.primaryColor
                                      : Colors.white,
                                  border: Border.all(
                                    color: AppColor.hintsColor,
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset(
                                      AppImages.appCreditCard,
                                      width: 45,
                                      height: 55,
                                      color: _isCredithSelected
                                          ? Colors.white
                                          : AppColor.primaryColor,
                                    ),
                                    FittedBox(
                                      child: Text(
                                        'Credit Card',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w300,
                                          color: _isCredithSelected
                                              ? Colors.white
                                              : AppColor.primaryColor,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    _isCredithSelected
                        ? CreditCard(
                            cardType: CardType.masterCard,
                            cardNumber: cardNumber,
                            cardExpiry: expiryDate,
                            cardHolderName: cardHolderName,
                            cvv: cvv,
                            bankName: 'Axis Bank',
                            showBackSide: showBack,
                            frontBackground: CardBackgrounds.black,
                            backBackground: CardBackgrounds.white,
                            showShadow: true,
                            textExpDate: 'Exp. Date',
                            textName: 'Name',
                            textExpiry: 'MM/YY',
                          )
                        : SizedBox(
                            height: 10,
                          ),
                    _isCredithSelected
                        ? Padding(
                            padding: const EdgeInsets.only(left: 20.0, top: 30),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'Card Number',
                                    ),
                                    maxLength: 19,
                                    onChanged: (value) {
                                      setState(() {
                                        cardNumber = value;
                                      });
                                    },
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'Card Expiry',
                                    ),
                                    maxLength: 5,
                                    onChanged: (value) {
                                      setState(() {
                                        expiryDate = value;
                                      });
                                    },
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        hintText: 'Card Holder Name'),
                                    onChanged: (value) {
                                      setState(() {
                                        cardHolderName = value;
                                      });
                                    },
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 25),
                                  child: TextFormField(
                                    decoration:
                                        InputDecoration(hintText: 'CVV'),
                                    maxLength: 3,
                                    onChanged: (value) {
                                      setState(() {
                                        cvv = value;
                                      });
                                    },
                                    focusNode: _focusNode,
                                  ),
                                ),
                              ],
                            ),
                          )
                        : SizedBox(
                            height: 10,
                          ),
                    SizedBox(
                      height: 10,
                    ),
                    ActionButton(
                      label: 'Submit the request',
                      onPressed: () {},
                    )
                  ],
                ),
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

import 'package:compound_app/UI/AppImages/appImages.dart';
import 'package:compound_app/UI/appColors/appColors.dart';
import 'package:compound_app/UI/screens/MyRequsets/myRequsets.dart';
import 'package:compound_app/UI/screens/community/community.dart';
import 'package:compound_app/UI/screens/home/home.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 1;
  final List<Widget> _children = [
    CommunityScreen(),
    HomeScreen(),
    MyRequsetsScreen(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, // new
        currentIndex: _currentIndex, // new
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              AppImages.appCommunity,
              width: 25,
              height: 22,
              color: _currentIndex == 0
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
              color: _currentIndex == 1
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
              color: _currentIndex == 2
                  ? AppColor.primaryColor
                  : AppColor.hintsColor,
            ),
            label: 'My requsets',
          )
        ],
      ),
    );
  }
}

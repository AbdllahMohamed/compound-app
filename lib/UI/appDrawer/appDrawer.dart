import 'package:compound_app/UI/AppImages/appImages.dart';
import 'package:compound_app/UI/appColors/appColors.dart';
import 'package:compound_app/UI/screens/AccountSettings/accountSettings.dart';
import 'package:compound_app/UI/screens/ContactUs/contactUs.dart';
import 'package:compound_app/UI/screens/ReportIssue/ReportIssue.dart';
import 'package:compound_app/UI/screens/neighbors/neighbors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColor.primaryColor,
        child: Padding(
          padding: EdgeInsets.only(
            top: 50,
            left: 10,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 4,
                          color: Colors.white,
                        ),
                      ),
                      height: 70,
                      width: 75,
                      child: Image.asset(AppImages.appUser),
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
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text(
                            "Azadir project",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                ),
                child: Column(
                  children: <Widget>[
                    DrawerListItems(
                      text: 'Account Settings',
                      icon: Icons.settings,
                      onTap: () {
                        Get.to(AccountSettingsScreen());
                      },
                    ),
                    DrawerListItems(
                        text: 'Neighbors',
                        icon: Icons.person_outline,
                        onTap: () {
                          Get.to(NeighborsScreen());
                        }),
                    DrawerListItems(
                      text: 'Report Issue',
                      icon: Icons.chat_bubble_outline,
                      onTap: () {
                        Get.to(ReportIssueScreen());
                      },
                    ),
                    DrawerListItems(
                      text: 'Contact Us',
                      icon: Icons.bookmark_border,
                      onTap: () {
                        Get.to(ContactUsScreen());
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  minimumSize: Size(
                    200,
                    50,
                  ),
                ),
                child: Text(
                  'Logout',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerListItems extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function onTap;

  const DrawerListItems({
    Key key,
    this.icon,
    this.text,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: onTap,
          child: Row(
            children: <Widget>[
              Icon(
                icon,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 200,
          child: Divider(
            color: AppColor.hintsColor,
            thickness: 0.7,
          ),
        ),
      ],
    );
  }
}

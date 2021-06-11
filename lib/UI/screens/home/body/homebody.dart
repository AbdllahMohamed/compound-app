import 'package:compound_app/UI/AppImages/appImages.dart';
import 'package:compound_app/UI/appColors/appColors.dart';
import 'package:compound_app/UI/screens/login/Login.dart';
import 'package:compound_app/UI/screens/services/services.dart';
import 'package:compound_app/UI/sharedWidgets/title.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class HomeBody extends StatelessWidget {
  List _servicesImagePaths = [
    AppImages.appGateAccess,
    AppImages.appHousekeeping,
    AppImages.appMaintaince,
    AppImages.appcarwash,
    AppImages.appAnimalsCare,
  ];

  List _servicesTitles = [
    'Gate Access',
    'housekeeping',
    'maintaince',
    'car wash',
    'animals care',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 30,
        ),
        TitleWidget(
          label: 'Home',
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                'Announcements',
                style: TextStyle(
                  color: AppColor.primaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Text(
                'Sell All',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Expanded(
          flex: 1,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Container(
                  width: deviceWidth,
                  height: deviceHeight * 0.23,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColor.hintsColor,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.asset(
                          AppImages.appRepaireImage,
                          width: deviceWidth * 0.3,
                          height: deviceHeight * 0.1,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          FittedBox(
                            child: Text(
                              'Repair in the main road',
                              style: TextStyle(
                                color: AppColor.primaryColor,
                                fontSize: deviceWidth * 0.047,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          FittedBox(
                            child: Container(
                              width: deviceWidth * 0.45,
                              height: 70,
                              child: Text(
                                'Repair in the main road for two days,we hope to provide you with better service',
                                style: TextStyle(
                                  color: AppColor.primaryColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w100,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: deviceWidth * 0.2),
                            child: Text(
                              'Continue reading',
                              style: TextStyle(
                                color: AppColor.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(
                  'Services',
                  style: TextStyle(
                    color: AppColor.primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GridView.builder(
                physics:
                    NeverScrollableScrollPhysics(), // to disable GridView's scrolling
                shrinkWrap: true, // Y
                itemCount: 5,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 8,
                  childAspectRatio: 0.8,
                ),
                itemBuilder: (_, i) => Column(
                  children: [
                    BuildServicesWidget(
                      onTap: () {
                        Get.to(ServicesScreen());
                      },
                      imagePath: _servicesImagePaths[i],
                      label: _servicesTitles[i],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class BuildServicesWidget extends StatelessWidget {
  String imagePath;
  String label;
  Function onTap;
  BuildServicesWidget({this.imagePath, this.label, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: 120,
          height: 130,
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColor.hintsColor,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                imagePath,
                width: 45,
                height: 55,
              ),
              FittedBox(
                child: Text(
                  label,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: AppColor.primaryColor,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

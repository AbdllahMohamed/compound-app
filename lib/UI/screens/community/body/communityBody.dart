import 'package:compound_app/UI/AppImages/appImages.dart';
import 'package:compound_app/UI/screens/community/components/buildPostWithImage.dart';
import 'package:compound_app/UI/screens/community/components/buildPostWithoutImage.dart';
import 'package:compound_app/UI/screens/login/Login.dart';
import 'package:compound_app/UI/screens/makePost/makePost.dart';
import 'package:compound_app/UI/sharedWidgets/title.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommunityBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 30,
        ),
        TitleWidget(
          label: 'Community',
        ),
        SizedBox(
          height: 20,
        ),
        Expanded(
          flex: 1,
          child: ListView(
            children: [
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
                            onTap: () {
                              Get.to(MakePostScreen());
                            },
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
              BuildPostWithoutImage(),
              SizedBox(
                height: 5,
              ),
              BuildPostWithImage(),
            ],
          ),
        ),
      ],
    );
  }
}

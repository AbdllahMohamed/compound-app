import 'package:compound_app/UI/AppImages/appImages.dart';
import 'package:compound_app/UI/appColors/appColors.dart';
import 'package:flutter/material.dart';

class BuildPostWithoutImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shadowColor: Color(0xffB4ACAC),
        elevation: 1.5,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 8,
                bottom: 8,
                left: 8,
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
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Amir Weal',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '26m  ago',
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColor.hintsColor,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 8.0,
                left: 8,
                bottom: 8,
              ),
              child: Text(
                "We invite you to attend our friend Ahmed's birthday party next Monday",
                style: TextStyle(
                  fontSize: 15,
                  color: AppColor.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8,
                bottom: 8,
              ),
              child: Row(
                children: [
                  Text(
                    "145 likes",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xff878A8B),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "99 Comments",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xff878A8B),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8,
                bottom: 8,
              ),
              child: Row(
                children: [
                  Image.asset(AppImages.appLike),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Like",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xffC9B5B5),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(AppImages.appComment),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Commment",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xffC9B5B5),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:compound_app/UI/AppImages/appImages.dart';
import 'package:compound_app/UI/appColors/appColors.dart';
import 'package:flutter/material.dart';

class BuildPostWithImage extends StatelessWidget {
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
                        'Amina Hossam',
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
            Image.asset(
              AppImages.appPostImage,
              height: 255,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 8.0,
                left: 8,
                bottom: 8,
                top: 8,
              ),
              child: Text(
                "I would like to thank you for participating in the running event today, it was a great day and a great experience .",
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
                  Image.asset(
                    AppImages.appLike,
                    color: AppColor.primaryColor,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Like",
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColor.primaryColor,
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

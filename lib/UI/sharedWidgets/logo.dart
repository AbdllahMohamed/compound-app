import 'package:compound_app/UI/AppImages/appImages.dart';
import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        AppImages.applogo,
      ),
    );
  }
}

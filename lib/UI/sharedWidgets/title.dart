import 'package:compound_app/UI/appColors/appColors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TitleWidget extends StatelessWidget {
  String label;
  TitleWidget({this.label});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30,
      ),
      child: Text(
        label,
        style: TextStyle(
          color: AppColor.primaryColor,
          fontSize: 40,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

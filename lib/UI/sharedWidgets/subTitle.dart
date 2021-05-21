import 'package:compound_app/UI/appColors/appColors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SubTitle extends StatelessWidget {
  String label;
  SubTitle({this.label});
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
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

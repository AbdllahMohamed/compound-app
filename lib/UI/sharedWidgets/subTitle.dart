import 'package:compound_app/UI/appColors/appColors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SubTitle extends StatelessWidget {
  String label;
  double labelFontSiz;
  SubTitle({this.label, this.labelFontSiz});
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
          fontSize: labelFontSiz == null ? 20 : labelFontSiz,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

import 'package:compound_app/UI/appColors/appColors.dart';
import 'package:compound_app/UI/screens/login/Login.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ActionButton extends StatelessWidget {
  String label;
  Function onPressed;
  ActionButton({this.label, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            primary: AppColor.primaryColor,
            minimumSize: Size(
              devicewidth * 0.88,
              50,
            )),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 19,
          ),
        ),
      ),
    );
  }
}

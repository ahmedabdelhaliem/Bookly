import 'package:bookly_mvvm/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      this.borderRadius,
      required this.backGroundColor,
      required this.textColor,
      this.fontSize});
  final String text;
  final BorderRadius? borderRadius;
  final Color backGroundColor;
  final Color textColor;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 48,
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: backGroundColor,
              shape: RoundedRectangleBorder(
                  borderRadius: borderRadius ?? BorderRadius.circular(15))),
          child: Text(
            text,
            style: Styles.textStyle18.copyWith(
                fontWeight: FontWeight.w900,
                color: textColor,
                fontSize: fontSize),
          ),
        ));
  }
}

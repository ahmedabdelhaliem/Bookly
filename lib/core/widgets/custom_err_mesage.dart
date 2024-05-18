import 'package:bookly_mvvm/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrMessage extends StatelessWidget {
  const CustomErrMessage({super.key, required this.errMessage});
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Text(
      errMessage,
      style: Styles.textStyle16,
    );
  }
}

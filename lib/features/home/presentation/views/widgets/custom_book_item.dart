import 'package:bookly_mvvm/core/utils/assetsdata.dart';
import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: AssetImage(AssetData.test), fit: BoxFit.fill)),
      ),
    );
  }
}

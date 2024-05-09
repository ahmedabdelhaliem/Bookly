import 'package:bookly_mvvm/core/utils/assetsdata.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Row(
        children: [
          Image.asset(
            AssetData.logo,
            height: 24,
          ),
          const Spacer(),
          const Icon(FontAwesomeIcons.magnifyingGlass)
        ],
      ),
    );
  }
}

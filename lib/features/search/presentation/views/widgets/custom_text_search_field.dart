import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(),
          hintText: 'search',
          suffixIcon: Opacity(
            opacity: .8,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 22,
              ),
            ),
          )),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white));
  }
}

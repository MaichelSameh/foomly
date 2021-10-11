import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../config/palette.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final double? prefixIconHeight;
  final double? prefixIconWidth;
  final String? prefixIconName;
  final Widget? suffixIcon;
  final Color color;
  final TextStyle hintStyle;
  final TextEditingController? controller;
  final bool obscureText;
  // ignore: prefer_const_constructors_in_immutables
  CustomTextField({
    Key? key,
    required this.hint,
    this.prefixIconHeight,
    this.prefixIconName,
    this.prefixIconWidth,
    this.suffixIcon,
    this.color = MyPalette.primary_color,
    this.hintStyle = MyPalette.pink_text_style,
    this.controller,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: color,
          ),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            "assets/icons/$prefixIconName.svg",
            color: color,
            height: prefixIconHeight,
            width: prefixIconWidth,
          ),
          Flexible(
            child: TextField(
              controller: controller,
              cursorColor: color,
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: hintStyle,
                enabledBorder:
                    const OutlineInputBorder(borderSide: BorderSide.none),
                errorBorder:
                    const OutlineInputBorder(borderSide: BorderSide.none),
                border: const OutlineInputBorder(borderSide: BorderSide.none),
              ),
              obscureText: obscureText,
            ),
          ),
          suffixIcon ?? const SizedBox(),
        ],
      ),
    );
  }
}

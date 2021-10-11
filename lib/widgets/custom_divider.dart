import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  final double width;
  final double height;
  final double radius;
  final Color color;
  const CustomDivider({
    Key? key,
    this.height = 1,
    this.width = double.infinity,
    this.radius = 0,
    this.color = const Color.fromRGBO(193, 193, 193, 1),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius),
      ),
    );
  }
}

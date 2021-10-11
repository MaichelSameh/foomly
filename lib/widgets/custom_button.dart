import 'package:flutter/material.dart';

import '../models/size.dart';
import '../config/palette.dart';

class CustomElevatedButton extends StatelessWidget {
  late final double _width;
  late final double _height;

  late final BorderRadius? _borderRadius;

  late final Widget _child;

  late final Color? _color;

  late final List<Color>? _gradient;

  late final void Function()? _onTap;

  CustomElevatedButton({
    Key? key,
    required double width,
    required double height,
    required Widget child,
    BorderRadius? borderRadius,
    Color? color,
    void Function()? onTap,
    List<Color>? gradient,
  }) : super(key: key) {
    _borderRadius = borderRadius;
    _child = child;
    _color = color;
    _height = height;
    _width = width;
    _onTap = onTap;
    _gradient = gradient;
  }
  @override
  Widget build(BuildContext context) {
    Size _size = Size(context);
    return GestureDetector(
      onTap: _onTap,
      child: Container(
        width: _size.width(_width),
        height: _size.height(_height),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: _borderRadius ?? BorderRadius.circular(_size.width(10)),
          gradient: _gradient == null
              ? null
              : LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: _gradient ?? [],
                ),
          color: _color ?? MyPalette.primary_color,
        ),
        child: _child,
      ),
    );
  }
}

class CustomBorderedButton extends StatelessWidget {
  late final double _width;
  late final double _height;

  late final BorderRadius? _borderRadius;

  late final Widget _child;

  late final Color? _color;

  late final void Function()? _onTap;

  CustomBorderedButton({
    Key? key,
    required double width,
    required double height,
    required Widget child,
    BorderRadius? borderRadius,
    Color? color,
    void Function()? onTap,
  }) : super(key: key) {
    _borderRadius = borderRadius;
    _child = child;
    _color = color;
    _height = height;
    _width = width;
    _onTap = onTap;
  }
  @override
  Widget build(BuildContext context) {
    Size _size = Size(context);
    return GestureDetector(
      onTap: _onTap,
      child: Container(
        width: _size.width(_width),
        height: _size.height(_height),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: _color ?? MyPalette.primary_color),
          borderRadius: _borderRadius ?? BorderRadius.circular(_size.width(10)),
          color: Colors.transparent,
        ),
        child: _child,
      ),
    );
  }
}

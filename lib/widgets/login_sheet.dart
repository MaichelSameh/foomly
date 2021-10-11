import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../config/palette.dart';
import '../models/size.dart';
import 'widgets.dart';

void openLoginSheet(BuildContext context, Size _size) async {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (context) {
      return LoginSheetScreen(size: _size);
    },
  );
}

class LoginSheetScreen extends StatefulWidget {
  late final Size _size;
  LoginSheetScreen({Key? key, required Size size}) : super(key: key) {
    _size = size;
  }

  @override
  State<LoginSheetScreen> createState() => _LoginSheetScreenState();
}

class _LoginSheetScreenState extends State<LoginSheetScreen> {
  bool _hidePassword = true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            alignment: Alignment.topCenter,
            color: Colors.transparent,
            child: Container(
              height: widget._size.height(287),
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/authentication_sheet_background.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    color: const Color.fromRGBO(0, 0, 0, 0.6),
                  ),
                  Text(
                    'foomly'.toUpperCase(),
                    style: MyPalette.pink_text_style.copyWith(
                      fontSize: 30,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: double.infinity,
            margin: EdgeInsets.only(top: widget._size.height(247)),
            child: Container(
              width: widget._size.screenWidth(),
              height: widget._size.height(634),
              padding: EdgeInsets.symmetric(
                horizontal: widget._size.width(40),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(widget._size.width(40)),
                  topRight: Radius.circular(widget._size.width(40)),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: widget._size.height(12)),
                  CustomDivider(
                    width: widget._size.width(74),
                    height: widget._size.height(4),
                    radius: widget._size.width(2),
                  ),
                  SizedBox(height: widget._size.height(33)),
                  Text(
                    "Login".toUpperCase(),
                    style: MyPalette.pink_text_style.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: widget._size.height(41)),
                  CustomTextField(
                    controller: _emailController,
                    hint: "write your e-mail or phone number",
                    color: MyPalette.primary_color,
                    prefixIconHeight: widget._size.height(25),
                    prefixIconWidth: widget._size.width(25),
                    prefixIconName: "person",
                  ),
                  SizedBox(height: widget._size.height(30)),
                  CustomTextField(
                    controller: _passwordController,
                    hint: "write your password",
                    color: MyPalette.primary_color,
                    prefixIconHeight: widget._size.height(25),
                    prefixIconWidth: widget._size.width(25),
                    prefixIconName: "lock",
                    obscureText: _hidePassword,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _hidePassword = !_hidePassword;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(
                          widget._size.width(4),
                        ),
                        child: SvgPicture.asset(
                          _hidePassword
                              ? "assets/icons/hide.svg"
                              : "assets/icons/show.svg",
                          color: MyPalette.primary_color,
                          height: widget._size.height(30),
                          width: widget._size.width(30),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: widget._size.height(50)),
                  CustomElevatedButton(
                    width: widget._size.width(320),
                    height: widget._size.height(50),
                    child: Text(
                      "Login".toUpperCase(),
                      style: MyPalette.white_text_style,
                    ),
                    borderRadius:
                        BorderRadius.circular(widget._size.height(25)),
                  ),
                  SizedBox(height: widget._size.height(90)),
                  CustomElevatedButton(
                    color: MyPalette.custom_blue_color,
                    width: widget._size.width(320),
                    height: widget._size.height(50),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: widget._size.width(36)),
                          child: SvgPicture.asset(
                            "assets/icons/facebook_icon.svg",
                            width: widget._size.width(10),
                            height: widget._size.height(16),
                          ),
                        ),
                        Text(
                          "Continue with facebook".toUpperCase(),
                          style: MyPalette.white_text_style,
                        ),
                      ],
                    ),
                    borderRadius:
                        BorderRadius.circular(widget._size.height(25)),
                  ),
                  SizedBox(height: widget._size.height(17)),
                  CustomBorderedButton(
                    color: MyPalette.primary_color,
                    width: widget._size.width(320),
                    height: widget._size.height(50),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: widget._size.width(36)),
                          child: SvgPicture.asset(
                            "assets/icons/google_icon.svg",
                            width: widget._size.width(10),
                            height: widget._size.height(16),
                          ),
                        ),
                        Text(
                          "Continue with google".toUpperCase(),
                          style: MyPalette.pink_text_style,
                        ),
                      ],
                    ),
                    borderRadius:
                        BorderRadius.circular(widget._size.height(25)),
                  ),
                  SizedBox(height: widget._size.height(17)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: MyPalette.pink_text_style.copyWith(
                          color: MyPalette.primary_color.withOpacity(0.7),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          padding: EdgeInsets.all(widget._size.width(7)),
                          child: const Text(
                            "Signup",
                            style: MyPalette.orange_text_style,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

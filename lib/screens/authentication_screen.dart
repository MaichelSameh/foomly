import 'package:flutter/material.dart';

import '../config/palette.dart';
import '../models/size.dart';
import '../widgets/widgets.dart';

class AuthenticationScreen extends StatelessWidget {
  // ignore: constant_identifier_names
  static const String route_name = "authentication_screen";
  const AuthenticationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = Size(context);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: _size.width(24)),
        height: double.infinity,
        width: _size.screenWidth(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/auth_home_background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: _size.height(77)),
            Text(
              "foomly".toUpperCase(),
              style: MyPalette.white_text_style.copyWith(
                fontSize: 28,
              ),
            ),
            const Spacer(),
            CustomElevatedButton(
              onTap: () {
                openLoginSheet(context, _size);
              },
              width: double.infinity,
              height: _size.height(50),
              child: Center(
                child: Text(
                  "login".toUpperCase(),
                  style: MyPalette.white_text_style,
                ),
              ),
              color: MyPalette.primary_color,
              borderRadius: BorderRadius.circular(
                _size.height(25),
              ),
            ),
            SizedBox(height: _size.height(20)),
            CustomElevatedButton(
              onTap: () {
                openSignUpSheet(context, _size);
              },
              width: double.infinity,
              height: _size.height(50),
              child: Center(
                child: Text(
                  "Sign up as a customer".toUpperCase(),
                  style: MyPalette.white_text_style,
                ),
              ),
              color: MyPalette.secondary_color,
              borderRadius: BorderRadius.circular(
                _size.height(25),
              ),
            ),
            SizedBox(height: _size.height(20)),
            CustomBorderedButton(
              width: double.infinity,
              height: _size.height(50),
              child: Center(
                child: Text(
                  "Sign up as a seller".toUpperCase(),
                  style: MyPalette.orange_text_style,
                ),
              ),
              color: MyPalette.secondary_color,
              borderRadius: BorderRadius.circular(
                _size.height(25),
              ),
            ),
            SizedBox(height: _size.height(40)),
          ],
        ),
      ),
    );
  }
}

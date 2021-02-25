import 'package:Tesla/src/ui/constants/colors.dart';
import 'package:Tesla/src/ui/screens/splash/widgets/content.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarBrightness: Brightness.light));
    return Scaffold(
      body: Container(
        child: SplashScreenContent(),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              ColorPalatte.linearBackgroundStart,
              ColorPalatte.linearBackgroundEnd
            ])),
      ),
    );
  }
}

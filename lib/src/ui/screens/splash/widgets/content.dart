import 'package:Tesla/src/ui/utils/painters.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';

class SplashScreenContent extends StatefulWidget {
  SplashScreenContent({Key key}) : super(key: key);

  @override
  _SplashScreenContentState createState() => _SplashScreenContentState();
}

class _SplashScreenContentState extends State<SplashScreenContent> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width * .75;
    var logoSize = MediaQuery.of(context).size.width * .3;
    return Center(
      child: Stack(
        children: [
          Container(
              width: double.infinity,
              height: double.infinity,
              child: CustomPaint(
                  painter: HolePainter(
                      color: widget.color,
                      holeSize: _animation.holeSize.value * size.width))),
          Positioned(
            child: Lottie.asset("assets/lottie/loading-animation.json",
                width: size, height: size),
          ),
          Positioned(
            child: SvgPicture.asset(
              "assets/images/tesla-logo.svg",
              color: Colors.white,
              width: logoSize,
              height: logoSize,
            ),
            left: size / 2 - logoSize * .43,
            top: size / 2 - logoSize * .44,
          )
        ],
      ),
    );
  }
}

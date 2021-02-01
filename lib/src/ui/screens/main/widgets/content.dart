import 'package:Tesla/src/ui/constants/colors.dart';
import 'package:Tesla/src/ui/constants/sizes.dart';
import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  const Content({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final dWidth = MediaQuery.of(context).size.width;
    return Expanded(
      child: Column(
        children: [
          Text(
            "Tesla",
            style: TextStyle(
                color: ColorPalatte.defaultDarkText,
                fontSize: FontSizes.medium,
                fontFamily: "Lato"),
          ),
          Text(
            "Cybertruck",
            style: TextStyle(
                color: ColorPalatte.defaultLightText,
                fontSize: FontSizes.large,
                fontWeight: FontWeight.bold,
                fontFamily: "Lato"),
          ),
          Expanded(
              child: Stack(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Spacer(),
                  Text(
                    "297",
                    style: TextStyle(
                      color: ColorPalatte.defaultLightText,
                      fontSize: FontSizes.extraLarge,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 40.0),
                    child: Text(
                      "km",
                      style: TextStyle(color: ColorPalatte.defaultLightText),
                    ),
                  ),
                  // Spacer(),
                ],
              ),
              Positioned(
                bottom: 70,
                left: 5,
                child: Image.asset(
                  "assets/images/main-image.png",
                  width: dWidth * 1,
                  height: dWidth * 2,
                ),
                //   left: 0,
              ),
              // left: dWidth * 0.1,
              // top: -dWidth * 0.2)
            ],
          )),
        ],
      ),
    );
  }
}

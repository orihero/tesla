import 'package:Tesla/src/ui/constants/colors.dart';
import 'package:Tesla/src/ui/constants/tesla_icons_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Header extends StatefulWidget {
  Header({Key key}) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  bool pressed = false;
  void onPress() {
    setState(() {
      pressed = !pressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: NeumorphicButton(
          child: Icon(
            TeslaIcons.settings_cog,
            color: ColorPalatte.iconsAccent,
            size: 20,
          ),
          style: NeumorphicStyle(
              boxShape: NeumorphicBoxShape.circle(),
              shape: NeumorphicShape.convex,
              color: ColorPalatte.linearBackgroundEnd,
              depth: 20,
              shadowLightColor: ColorPalatte.defaultShadowStart,
              shadowDarkColor: ColorPalatte.linearBackgroundEnd,
              border: NeumorphicBorder(
                  isEnabled: true,
                  color: ColorPalatte.defaultBorderColor,
                  width: 4)),
          pressed: pressed,
          onPressed: onPress,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(20),
          curve: Curves.easeInOut,
        ),
        alignment: Alignment.topRight,
      ),
      padding: EdgeInsets.only(top: 40, right: 20),
    );
  }
}

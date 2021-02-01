import 'package:Tesla/src/ui/constants/colors.dart';
import 'package:Tesla/src/ui/screens/main/widgets/content.dart';
import 'package:Tesla/src/ui/screens/main/widgets/footer.dart';
import 'package:Tesla/src/ui/screens/main/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [Header(), Content(), Footer()],
        ),
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

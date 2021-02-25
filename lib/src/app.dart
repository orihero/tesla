import 'package:Tesla/src/ui/screens/main/body.dart';
import 'package:Tesla/src/ui/screens/splash/body.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Scaffold(
          appBar: AppBar(
            title: Text('Raindrop App'),
          ),
          body: MainScreen()),
      IgnorePointer(child: SplashScreen())
    ]);
  }
}

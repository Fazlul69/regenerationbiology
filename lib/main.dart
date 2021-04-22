import 'package:flutter/material.dart';
import 'package:regenerationbiology/view.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  hexColor(String colorCode) {
    String colornew = '0xff' + colorCode;
    colornew = colornew.replaceAll('#', '');
    int colorint = int.parse(colornew);
    return colorint;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Regenerationbiology',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(hexColor('#7bcc70')),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Regenerationbiology',
              ),
            ],
          ),
        ),
        body: AnimatedSplashScreen(
          splash: Image.asset(
            'assets/images/finalIcon.png',
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          nextScreen: WebShow(),
          splashTransition: SplashTransition.rotationTransition,
          duration: 3000,
        ),
      ),
    );
  }
}

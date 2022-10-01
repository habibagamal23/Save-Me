import 'dart:async';

import 'package:flutter/material.dart';
import 'package:future_bride/presention/screens/onBoardingg/OnBoardingveiw.dart';
import 'package:future_bride/shared/assets_manger.dart';
import 'package:future_bride/shared/colorManger.dart';
import 'package:future_bride/shared/font_manger.dart';
import 'package:future_bride/shared/textManger.dart';
import 'package:delayed_display/delayed_display.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = const Duration(seconds: 4);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => OboardingVeiw()),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManger.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              Assets_Manger.LogoPath,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: SizeManger.s20,
            ),
            const DelayedDisplay(
                delay: Duration(seconds: 2),
                child: Text(
                  Text_Manger.nameApp,
                  style: TextStyle(
                      fontSize: SizeManger.s50,
                      color: ColorManger.primry,
                      fontWeight: FontWeight.bold),
                )),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

import 'package:flutter/material.dart';
import 'package:future_bride/shared/assets_manger.dart';
import 'package:future_bride/shared/colorManger.dart';
import 'package:future_bride/shared/textManger.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../../shared/font_manger.dart';
import '../Homes/HomeVeiw.dart';

class OnBoardingBody extends StatelessWidget {
  Widget buildImage(String path) => Center(
          child: Image.asset(
        path,
        width: double.infinity,
      ));

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: ColorManger.blue,
        activeColor: ColorManger.primry,
        size: const Size(10, 10),
        activeSize: const Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );
  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle: const TextStyle(
            fontSize: SizeManger.s28,
            fontWeight: FontWeight.bold,
            color: ColorManger.blue),
        bodyTextStyle: const TextStyle(
            fontSize: SizeManger.s20, color: ColorManger.lightblue),
        titlePadding: const EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: const EdgeInsets.all(8),
        pageColor: ColorManger.a3,
      );

  void navigationPage(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => HomeView()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IntroductionScreen(
        pages: [
          PageViewModel(
              title: Text_Manger.titleOnbording1,
              body: Text_Manger.subTitleOnbording1,
              image: buildImage(Assets_Manger.onboarding1),
              decoration: getPageDecoration()),
          PageViewModel(
              title: Text_Manger.titleOnbording2,
              body: Text_Manger.subTitleOnbording12,
              image: buildImage(Assets_Manger.onboarding2),
              decoration: getPageDecoration()),
          PageViewModel(
              title: Text_Manger.titleOnbording3,
              body: Text_Manger.subTitleOnbording3,
              image: buildImage(Assets_Manger.onboarding3),
              footer: InkWell(
                onTap: () => navigationPage(context),
                child: Container(
                  height: 60,
                  width: 220,
                  decoration: BoxDecoration(
                    color: ColorManger.lightblue,
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  child: const Text(Text_Manger.buttonOnbording1,
                      style: TextStyle(
                          color: ColorManger.primry,
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                  alignment: Alignment.center,
                ),
              ),
              decoration: getPageDecoration()),
        ],
        done: const Text(Text_Manger.buttonOnbording1,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: ColorManger.blue)),
        onDone: () => navigationPage,
        showSkipButton: true,
        skip: const Text(
          'Skip',
          style: TextStyle(color: ColorManger.blue, fontSize: 15),
        ),
        onSkip: () => navigationPage,
        next: const Icon(
          Icons.arrow_forward,
          color: ColorManger.blue,
        ),
        nextFlex: 0,
        skipOrBackFlex: 0,
        dotsDecorator: getDotDecoration(),
      ),
    );
  }
}

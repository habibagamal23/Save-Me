import 'package:flutter/material.dart';
import 'package:future_bride/presention/screens/Homes/homeBody.dart';
import 'package:future_bride/shared/colorManger.dart';
import 'package:future_bride/shared/font_manger.dart';
import 'package:future_bride/shared/textManger.dart';
import 'package:intl/intl.dart';

class HomeView extends StatelessWidget {
  String datetime3 = DateFormat.MMMMEEEEd().format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManger.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorManger.white,
        elevation: 0,
        leading: const Icon(
          Icons.menu,
          color: ColorManger.blue,
          size: 30,
        ),
        title: const Text(Text_Manger.nameApp,
            style: TextStyle(
                color: ColorManger.blue,
                fontSize: 30,
                fontWeight: fontWeightManger.bold)),
      ),
      body: SafeArea(
          child: Container(
              padding: const EdgeInsets.only(top: 0),
              child: Column(
                children: [
                  Container(
                      width: double.infinity,
                      height: 250,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/image/proposal.png"),
                              fit: BoxFit.fitHeight)),
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                colors: [
                              Colors.blueGrey.withOpacity(.7),
                              Colors.blue.withOpacity(.2),
                            ])),
                        child: Container(
                          decoration: const BoxDecoration(),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    datetime3,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        fontSize: 38,
                                        color: ColorManger.a2,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 50,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 40),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Text(
                                    "what are you going to Buy Today ?",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: ColorManger.a2,
                                        fontSize: 20,
                                        fontWeight: fontWeightManger.bold),
                                  ),
                                ),
                              ]),
                        ),
                      )),
                  const SizedBox(
                    height: 5,
                  ),
                  Expanded(child: Home()),
                ],
              ))),
    );
  }
}

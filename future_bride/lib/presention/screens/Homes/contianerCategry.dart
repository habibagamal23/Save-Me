// ignore: file_names
import 'package:flutter/material.dart';

import 'package:future_bride/shared/colorManger.dart';

import '../../../db/sharedb.dart';

onclick(int num, context) {
  switch (num) {
    case 1:
      Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => ShareDB("Text_Manger.c1")),
      );
      break;
    case 2:
      Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => ShareDB("Text_Manger.c2")),
      );
      break;
  }
}

Widget homeContiner(String text, int num, Color color, String img, context) {
  return InkWell(
    onTap: () => onclick(num, context),
    child: Container(
      margin: const EdgeInsets.all(8.0),
      height: 70,
      width: 700,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(
            color: ColorManger.white,
            width: 2.0,
          ),
          color: ColorManger.white,
          // ignore: prefer_const_literals_to_create_immutables
          boxShadow: [
            BoxShadow(
                spreadRadius: 2.0,
                color: color,
                blurRadius: 2.0,
                offset: const Offset(2, 2)),
          ]),
      child: Center(
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage(img), fit: BoxFit.fill),
            ),
            width: 70,
            height: 60,
          ),
          const SizedBox(
            width: 7,
          ),
          Text(
            text,
            style: const TextStyle(
                color: ColorManger.blue,
                fontWeight: FontWeight.bold,
                fontSize: 27),
          ),
        ]),
      ),
    ),
  );
}

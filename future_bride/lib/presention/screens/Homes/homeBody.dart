import 'package:flutter/material.dart';

import '../../../shared/colorManger.dart';
import '../../../shared/const/constant.dart';
import 'contianerCategry.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: ColorManger.white,
      ),
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: listHome.length,
          itemBuilder: (context, index) {
            return homeContiner(listHome[index].name, listHome[index].num,
                listHome[index].color, listHome[index].img, context);
          }),
    );
  }
}

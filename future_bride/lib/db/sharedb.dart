import 'package:flutter/material.dart';

class ShareDB extends StatelessWidget {
  String tableName;
  ShareDB(this.tableName, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(tableName),
      ),
    );
  }
}
